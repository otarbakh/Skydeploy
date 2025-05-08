terraform {
  backend "s3" {
    bucket         = "skydeploy-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"  # Directly hardcode the region
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

