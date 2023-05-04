data "aws_security_group" "test" {
  name = "test"
}

output "security_group_id" {
  value ="data.aws_security_group.selected"
}

