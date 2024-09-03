module "aws-instance" {
    source = "../terraform-modules/module_implementation1/modules/ec2-instance"
    ami_value = "ami-068e0f1a600cd311c"
    instance_type_value = "t2.micro"
    instance_name = "Instance_remotebackend"
}
# We can use a bucket that's already created for storing statefile or we can create the bucket using terraform resource block

module "s3-bucket" {
    source = "./modules/s3-bucket"
    region = "ap-south-1"
    bucket_name = "my-s3-bucket-for-statefile-storing"
}

resource "aws_dynamodb_table" "example" {
  name             = "state-locking"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"
  # stream_enabled   = true
  # stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "LockID"
    type = "S"
  }
}
