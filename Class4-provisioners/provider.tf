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
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0fef201115eefe936"
  instance_type = "t3.micro"
  key_name = "my-laptop-key"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

    connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
    host     = self.public_ip
  }


  provisioner "remote-exec" {
    inline = [ 
        "sudo yum install httpd -y"
     ]
    
  }

}

# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"

#   provisioner "local-exec" {
#     command = "mkdir kaizen"
#   }
# }

 