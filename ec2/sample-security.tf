data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}
resource "aws_instance" "frontend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

  output "HelloWorld" {
    value = aws_instance.HelloWorld.public_ip
  }

resource "aws_route53_record" "frontend" {
  zone_id = "Z0587270PBVKKHW0FPNL"
  name    = "frontend-dev.swedev99.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

