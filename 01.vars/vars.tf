variable  "sample_string" {
default = "hello world"
}
variable "sample_number"{
  default = 199
}
variable "sample_boolean"{
  default = true
}
variable "sample_list"{
  default = [
  "swethu",
  99,
  true,
  100
  ]
}
variable "sample_dict"{
  default = {
    number1 = 200
    string = "swetha reddy"
    number2 ="300"
    boolean ="true"
  }
}
variable "env"{}
variable "auto_num"{}
variable "sample1"{}