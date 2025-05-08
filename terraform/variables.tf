variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to deploy resources"
  type        = string
  default     = "us-east-1a"  # You can set the default zone or override it during plan/apply
}

