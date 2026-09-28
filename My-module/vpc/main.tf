resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr[0]

  tags = {
    Name = "${var.environment}-subnet-1"
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr[1]

  tags = {
    Name = "${var.environment}-subnet-2"
  }
}

variable "vpc_cidr" {
}
variable "subnet_cidr" { 
}
variable "environment" {
}

output subnet1_id {
  value = aws_subnet.main1.id
}
  
