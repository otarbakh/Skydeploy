provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "skydeploy_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "skydeploy-vpc"
  }
}

resource "aws_subnet" "skydeploy_subnet" {
  vpc_id            = aws_vpc.skydeploy_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "skydeploy-subnet"
  }
}

resource "aws_internet_gateway" "skydeploy_igw" {
  vpc_id = aws_vpc.skydeploy_vpc.id

  tags = {
    Name = "skydeploy-igw"
  }
}

resource "aws_route_table" "skydeploy_route_table" {
  vpc_id = aws_vpc.skydeploy_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.skydeploy_igw.id
  }

  tags = {
    Name = "skydeploy-route-table"
  }
}

resource "aws_route_table_association" "skydeploy_route_table_assoc" {
  subnet_id      = aws_subnet.skydeploy_subnet.id
  route_table_id = aws_route_table.skydeploy_route_table.id
}

resource "aws_security_group" "skydeploy_sg" {
  name        = "skydeploy-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = aws_vpc.skydeploy_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "skydeploy_key" {
  key_name   = "skydeploy-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "skydeploy_instance" {
  ami                    = "ami-053b0d53c279acc90" # Ubuntu 22.04 in us-east-1
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.skydeploy_subnet.id
  vpc_security_group_ids = [aws_security_group.skydeploy_sg.id]
  key_name               = aws_key_pair.skydeploy_key.key_name
  associate_public_ip_address = true

  tags = {
    Name = "skydeploy-ec2"
  }
}
