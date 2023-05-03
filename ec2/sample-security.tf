data "aws_ami" "www" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}
resource "aws_instance" "swethu" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "swethu"
  }
}

  output "ami" {
    value = data.aws_ami.centos.image_id
  }

#resource "aws_route53_record" "swethu" {
 # zone_id = "Z0587270PBVKKHW0FPNL"
  #name    = "swethu-dev.swedev99.online"
 # type    = "A"
 # ttl     = 30
  #records = [aws_instance.swethu.private_ip]
#}

