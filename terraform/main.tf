module "s3_backend" {
  source              = "./modules/s3_backend"
  s3_bucket_name      = "skydeploy-terraform-state"
  dynamodb_table_name = "terraform-locks"
}

provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  aws_region        = var.aws_region
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  public_key  = var.public_key
}
