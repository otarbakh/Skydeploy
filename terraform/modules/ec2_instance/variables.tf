variable "aws_region" {
  description = "The AWS region where the EC2 instance will be deployed"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}


variable "availability_zone" {
  description = "The availability zone to deploy resources"
  type        = string
}

