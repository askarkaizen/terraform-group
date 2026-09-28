provider "aws" {
    region = "us-east-1"
}

module "vpc" {
    source = "../vpc"
    vpc_cidr = "192.168.0.0/16"
    subnet_cidr = ["192.168.1.0/24", "192.168.2.0/24"]
    environment = "dev"
}

module "ec2" {
    source = "../ec2"
    subnet_id = module.vpc.subnet1_id
    environment = "dev"
}