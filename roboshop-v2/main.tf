variable "ami" {
  description = "ami related things"
  default = "ami-03265a0778a880afb"
}
variable "instance_type" {
  description = "instance related things"
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  description = "security related group ids"
  default = [ "sg-07bf8bea064a5f22c"]
}
variable "zone_id" {
  description = "zone related things"
  default = "Z02456543UCI8DLI5F070"
}
variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
    }
    catalogue = {
      name = "catalogue-dev"
    }
    mongodb = {
      name = "mongodb-dev"
    }
    cart = {
      name = "cart-dev"
    }
    user = {
      name = "user-dev"
    }
    redis = {
      name = "redis-dev"
    }
    mysql = {
      name = "mysql-dev"
    }
    shipping = {
      name = "shiping-dev"
    }
    payment = {
      name = "payment-dev"
    }
    dispatch = {
      name = "dispatch-dev"
    }


  }

}
resource "aws_instance" "frontend" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value, "name", null )
  }
}
#resource "aws_route53_record" "frontend" {
#  zone_id = var.zone_id
#  name    = "frontend-dev.sivadevops22.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.frontend.private_ip]
#}
