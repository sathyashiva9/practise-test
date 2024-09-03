module ec2-instance {
    source = "../terraform-modules/module_implementation1/modules/ec2-instance"
    ami_value = lookup(var.ami_value, terraform.workspace, "ami-0d473344347276854")
    instance_name = lookup(var.instance_name, terraform.workspace, "My Instance")
    instance_type_value = lookup(var.instance_type_value, terraform.workspace, "t2.micro")
}