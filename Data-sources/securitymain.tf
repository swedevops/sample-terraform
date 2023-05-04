data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}
data "aws_security_group" "test" {
  name = "test"
}
variable "instance_type" {
  default = "t3.micro"
}
resource "aws_instance" "swe" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "instance_type"
  vpc_security_group_ids = [data.aws_security_group.test.id]

  tags = {
    Name = "swe"
  }
}

