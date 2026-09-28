module "vpc-aws" {
  #source  = "askarkaizen/vpc-aws/module"
  source = "git@github.com:askarkaizen/terraform-module-vpc-aws.git?ref=v0.0.2"
  #version = "0.0.3"

  # insert the 1 required variable here
  vpc_cidr = "10.0.0.0/16"
  subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24"]

}

provider "aws" {
  region = "us-east-1"
}