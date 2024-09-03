variable "ami_value" {
  type = map(string)
  default = {
    "dev" = "ami-068e0f1a600cd311c"
    "stage" = "ami-0d473344347276854"
    "prod" = "ami-022ce6f32988af5fa"
  }
}

variable "instance_type_value" {
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "stage" = "t2.micro"
    "prod" = "t2.micro"
  }
}

variable "instance_name" {
    type = map(string)
    default = {
      "dev" = "dev Instance"
      "stage" = "stage Instance"
      "prod" = "prod Instance"
    }
}