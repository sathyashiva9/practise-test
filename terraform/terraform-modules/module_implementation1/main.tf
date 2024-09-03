provider "aws" {
 
  region = "ap-south-1"
}

module "ec2-instance" {
  source = "./modules/ec2-instance"
  ami_value = "ami-068e0f1a600cd311c"
  instance_type_value = "t2.micro"
  instance_name = "NewInstance"

}
