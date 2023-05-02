resource "aws_instance" "centos" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "helloworld" {
  zone_id = "Z0587270PBVKKHW0FPNL"
  name    = "HelloWorld"
  type    = "A"
  ttl     = 30
  records = [aws_eip.lb.public_ip]
}