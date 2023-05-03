output "sample_string" {
  value = var.sample_string
}
outpu "sample_string1" {
  value = "value of sample_string = ${var.sample_string}"
}
output "sample_number"{
  value = var.sample_number
}
output "sample_list"{
  value = var.sample_list[2]
}
output "sample_dict"{
  value=var.sample_list[number1]
}
output "sample_dict1"{
  value=var.sample_list[string]
}
