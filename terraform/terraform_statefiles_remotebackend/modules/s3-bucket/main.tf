resource "aws_s3_bucket" "s3-bucket-for-statefile" {
  bucket = var.bucket_name
}