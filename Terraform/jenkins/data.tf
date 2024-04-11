data "aws_ami" "amazonlinux2" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["Amazon Linux 2 Kernel 5.10 AMI 2.0.20240329.0 x86_64 HVM gp2"]
  }
}
