# plain variables
#variable "test" {
#  default = "hello world"
#}
#output "test" {
#  value = var.test
#}
# list variables
#variable "list_values" {
#  default = [ "siva", "lingam" ]
#}
#variable "list_values" {
#    default = [
#      "siva",
#      "lingam"
#    ]
#  }
#
## how to access the list values. list values always start with zero index.
#output "list_values" {
##  value = var.list_values[0]
#  value = var.list_values[1]
#}
variable "map_values" {
  default = {
    apple = {
      stocks = 100
    }
    banana = {
      stocks = 100
    }
  }
}
#variable "map_values"  {
#  default = {
#    apple = 100
#    banana = 200
#  }
#
#}
#output "map_values" {
#  value = var.map_values["apple"]
#}
# how to access the map values or list values along with strings
output "map_values" {
 value = "apple stock is ${ var.map_values["apple"].stocks}"
}


