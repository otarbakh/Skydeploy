output "s3_bucket_name" {
  value       = aws_s3_bucket.terraform_state.id
  description = "The ID of the S3 bucket for Terraform state"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_locks.name
  description = "The name of the DynamoDB table used for state locking"
}
