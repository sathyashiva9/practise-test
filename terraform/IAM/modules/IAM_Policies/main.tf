resource "aws_iam_policy" "policy" {
  name        = var.policyName
  path        = "/" #default path is /(like folder)
  description = "My test policy to read the instances created using terraform"
  

  policy = file(var.iam_policy)
}