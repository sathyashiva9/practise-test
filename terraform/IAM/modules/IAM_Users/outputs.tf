output "user_name" {
  value = aws_iam_user.example.name
}

output "user_arn" {
  value = aws_iam_user.example.arn
}

output "user_access_key_id" {
  value = aws_iam_access_key.ak.id
}

output "user_access_key_secret" {
  value = aws_iam_access_key.ak.secret
  sensitive = true
}