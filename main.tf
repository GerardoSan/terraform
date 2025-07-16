###### Modulos ######

module "nginx_server_dev" {
  source = "./nginx_server_module"
  ami_id = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  region = "us-east-1"
} 

output "public_ip_dev" {
  value = module.nginx_server_dev.public_ip
}

output "public_dns_dev" {
  value = module.nginx_server_dev.public_dns
}

module "nginx_server_prod" {
  source = "./nginx_server_module"
  ami_id = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  region = "us-east-1"
} 

output "public_ip_prod" {
  value = module.nginx_server_prod.public_ip
}

output "public_dns_prod" {
  value = module.nginx_server_prod.public_dns
}

