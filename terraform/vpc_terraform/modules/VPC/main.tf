resource "aws_vpc" "my-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc-01-tf"
  }
}

resource "aws_subnet" "my-subnet-1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "my-subnet-1-tf"
  }
}

resource "aws_subnet" "my-subnet-2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "my-subnet-2-tf"
  }
}

#This is a sample creation of VPC and subnets. If required create routetable and add route to it , crate igw, associate routetable with subnet to make it prublic.Network ACLs and Sgs will be created automaticlaly.lly.