terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_eks_cluster" "EKSCluster" {
    name = "my-eks-2"
    role_arn = "arn:aws:iam::637423585300:role/myAmazonEKSClusterRole"
    version = "1.30"
    vpc_config {
        security_group_ids = [
            "sg-00c79826c2041d5df"
        ]
        subnet_ids = [
            "subnet-0381f0af7a98b1d31",
            "subnet-089c4f27c70b5df03",
            "subnet-0a090cc67ba50923a"
        ]
    }
}

