resource "aws_iam_user" "example" {
  name = var.username

  tags = var.tags
}

#Remove access key code if not needed
resource "aws_iam_access_key" "ak" {
  user = aws_iam_user.example.name
}

#Remove policy attachments to the users if not needed
module "IAM_Policies" {
  source = "../IAM_Policies"
  iam_policy = "test-policy.json"
  policyName = "newName"
}
resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.example.name
  policy_arn = module.IAM_Policies.policy_arn
}