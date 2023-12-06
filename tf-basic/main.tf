variable "vpc_id" {
 default = "10.0.0.0/16"

}
variable "public_subnet" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}
variable "app_subnet" {
  default = ["10.0.3.0/24","10.0.4.0/24"]
}
variable "db_subnet" {
  default = ["10.0.5.0/24","10.0.6.0/24"]
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_id
}
resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet)
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet[count.index]
  tags = {
    name = "public - ${count.index+1}"
  }
}
resource "aws_subnet" "app_subnet" {
  count = length(var.app_subnet)
  vpc_id = aws_vpc.main.id
  cidr_block = var.app_subnet[count.index]
  tags = {
    name = "app - ${count.index+1}"
  }
}
resource "aws_subnet" "db_subnet" {
  count = length(var.db_subnet)
  vpc_id = aws_vpc.main.id
  cidr_block = var.db_subnet[count.index]
  tags = {
    name = "db - ${count.index+1}"
  }
}