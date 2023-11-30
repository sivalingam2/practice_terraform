variable "components" {
  default = [ " frontend", "mongodb"]
}
resource "aws_instance" "web" {
  count = 2
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"

  tags = {
    Name = var.components[ count.index]
  }
}
