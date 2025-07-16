resource "aws_instance" "nginx_server" {
  ami = var.ami_id
  instance_type = var.instance_type
    tags = {
    Name = "nginx-server"
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

resource "aws_security_group" "mi_seguridad" {
  name = "mi_seguridad"
  description = "Mi seguridad"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}