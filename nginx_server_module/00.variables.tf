##### Variables #######

variable "ami_id" {
    description = "ID de la AMI"
    default = "ami-020cba7c55df1f615"
}

variable "instance_type" {
    description = "Tipo de instancia"
    default = "t2.micro"
}

variable "region" {
    description = "Region"
    default = "us-east-1"
}

variable "server_name" {
    description = "Nombre del servidor"
    default = "nginx-server"
}