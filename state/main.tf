terraform {
  backend "s3" {
    bucket = "sivalingamdevops"
    key    = "state/sivalinga"
    region = "us-east-1"
  }
}
variable "test" {
  default = "this is the siva"
}
output "test" {
  value = var.test
}
