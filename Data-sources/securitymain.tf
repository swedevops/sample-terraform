data "aws_security_group" "selected" {
  name = "test"
}

output "security_group_id" {
  value ="data.aws_security_group.selected.id"
}

