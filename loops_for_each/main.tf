variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
    }
    backend = {
      name = "backend-dev"
    }

  }
}
resource "aws_instance" "web" {
  for_each = var.components
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"

  tags = {
    Name = lookup(var.components, each.key, null )
  }
}