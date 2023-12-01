resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }

}
resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name }.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

depends_on = [
  aws_route53_record.record

]
  resource "null_resource" "ansible" {
    provisioner "local-exec" {
  command = <<EOF
cd /root/asnible_project
git pull
sleep 30
ansible-playbook -i ${var.name }.sivadevops22.online, -e ansible_user = centos -e ansible_password = DevOps321 -e component= ${var.name}
EOF
}
}