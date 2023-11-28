# plain variables
variable "test" {
  default = "hello world"
}
output "test" {
  value = var.test
}
# list variables
variable "list_values" {
  default = [ "siva", "lingam" ]
}
# how to access the list values
output "list_values" {
  value = var.list_values[0]
}

