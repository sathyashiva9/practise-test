terraform {
  backend "s3" {
    bucket = "my-s3-bucket-for-statefile-storing"
    region = "ap-south-1"
    key = "terraform.tfstate"
    dynamodb_table = "state-locking"
  }
}