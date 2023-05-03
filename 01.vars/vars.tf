variable "sample_string" {
  default = "hello"
}
variable "sample_number" {
  default = 99
}
variable "sample_boolean" {
  default = true
}
variable "sample_list"{
  default = [
    "hiswe",
    99,
    true,
    999
  ]
}
variable "sample_dict"{
  default = {
    number1 = 100
    string  = "swethu"
    number2 = 122
    boolean = true
  }
}