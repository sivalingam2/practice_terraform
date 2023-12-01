variable "ami" {
  description = "ami related things"
  default = "ami-03265a0778a880afb"
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
      instance_type = "t2.micro"
    }
    catalogue = {
      name = "catalogue-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name = "mongodb-dev"
      instance_type = "t2.micro"
    }
    cart = {
      name = "cart-dev"
      instance_type = "t2.micro"
    }
    user = {
      name = "user-dev"
      instance_type = "t2.micro"
    }
    redis = {
      name = "redis-dev"
      instance_type = "t2.micro"
    }
    mysql = {
      name = "mysql-dev"
      instance_type = "t2.micro"
    }
    shipping = {
      name = "shipping-dev"
      instance_type = "t2.micro"
    }
    payment = {
      name = "payment-dev"
      instance_type = "t2.micro"
    }
    dispatch = {
      name = "dispatch-dev"
      instance_type = "t2.micro"
    }
    rabbitmq = {
      name = "rabbitmq-dev"
      instance_type = "t2.micro"
    }


  }

}