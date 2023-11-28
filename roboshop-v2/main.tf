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
resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongodb" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = var.zone_id
  name    = "mongodb-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "catalogue" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = var.zone_id
  name    = "catalogue-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "redis" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = var.zone_id
  name    = "redis-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "cart" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = var.zone_id
  name    = "cart-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "user" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = var.zone_id
  name    = "user-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-07bf8bea064a5f22c"]

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z02456543UCI8DLI5F070"
  name    = "mysql-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-07bf8bea064a5f22c"]

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z02456543UCI8DLI5F070"
  name    = "shipping-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-07bf8bea064a5f22c"]

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z02456543UCI8DLI5F070"
  name    = "rabbitmq-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-07bf8bea064a5f22c"]

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z02456543UCI8DLI5F070"
  name    = "payment-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "dispatch" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-07bf8bea064a5f22c"]

  tags = {
    Name = "dispatch"
  }
}
resource "aws_route53_record" "dispatch" {
  zone_id = "Z02456543UCI8DLI5F070"
  name    = "dispatch-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
