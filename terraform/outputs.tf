output "s3_bucket_name" {
  value       = module.s3_backend.s3_bucket_name
  description = "The ID of the S3 bucket for Terraform state"
}

output "dynamodb_table_name" {
  value       = module.s3_backend.dynamodb_table_name
  description = "The name of the DynamoDB table used for state locking"
}
