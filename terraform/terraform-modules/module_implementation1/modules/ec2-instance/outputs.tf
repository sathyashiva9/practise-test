output "ec2-public-ip" {
  value = aws_instance.MyInstance.public_ip
}