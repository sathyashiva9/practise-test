variable "region" {
  type = string
  default = "ap-south-1"
}

variable "username" {
  type = string
  default = "defaultUserName"
}

variable "tags" {
  description = "A map of tags to assign to the IAM user"
  type        = map(string)
  default     = {}
}
