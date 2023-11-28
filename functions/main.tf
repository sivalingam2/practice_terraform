variable "fruits" {
  default = [ "apple", "banana" ]
}
output "fruits" {
  value = element(var.fruits, 2)
}
variable "maps" {
  default = {
    hyderabad = {
      place = "madhapur"

    }
  }
}
output "places" {
  value = lookup(var.maps["hyderabad"], "stocks", null)
}
