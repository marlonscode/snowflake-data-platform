# add s3 bucket
resource "aws_s3_bucket" "s3_bucket_api_data" {
  bucket = "api-data-bucket-prod-snowflake-data-platform"
  tags = {
    Name        = "API Data Bucket"
    Environment = "Prod"
  }
}