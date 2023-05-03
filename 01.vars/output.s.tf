output "sample_string" {
  value = var.sample_string
}
output "sample_string1" {
  value ="value.sample_string1 = ${var.sample_string}"

}
output "sample_number"{
  value = var.sample_number
}
output "sample_boolean" {
  value = var.sample_boolean
}
output "sample_list" {
  value = var.sample_list[0]
}
output "sample_dict"{
  value = var.sample_dict["number1"]
}

