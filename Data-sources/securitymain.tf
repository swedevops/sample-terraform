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
variable "components"{
  default = ["swetha","bhrani","prasanna"]
}
resource "aws_instance" "instance" {
  count  = length(var.components)
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.test.id]

  tags = {
    Name = var.components[count.index]
  }
}

