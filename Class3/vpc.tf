resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  type = string
  description = "Provide vpc cidr block"
}

resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "subnet1"
  }
}

variable "subnet1_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet2_cidr" {
  default = "10.0.2.0/24"
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "subnet2"
  }
}
