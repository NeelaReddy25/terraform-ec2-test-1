module "ec2-test" {
  source = "../terraform-aws-ec2-2"
  instance_type = "t3.small"
  tags = {
    Name = "Module-test"
    Terraform = "true"
  }
}