resource "aws_instance" "nginx_server" {
  ami = var.ami_id
  instance_type = var.instance_type
    tags = {
    Name = "${var.server_name}"
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install nginx -y
    sudo systemctl start nginx
    sudo systemctl enable nginx
    EOF
   
    vpc_security_group_ids = [aws_security_group.mi_seguridad.id]
}
