terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Create VPC
resource "aws_vpc" "example" {
  cidr_block = var.vpc_cidr
}

variable "region" {
  
}

variable "vpc_cidr" {
  
}