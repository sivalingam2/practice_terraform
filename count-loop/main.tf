variable "components" {
  default = [ "catalogue", "frontend", "mongodb"]
}
resource "aws_instance" "web" {
 count = length(var.components)
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"

  tags = {
    Name = var.components[ count.index]
  }
}
