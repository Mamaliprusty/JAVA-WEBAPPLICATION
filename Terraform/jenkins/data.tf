data "aws_ami" "Ubuntu" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["ami-0b8b44ec9a8f90422"]
  }
}
