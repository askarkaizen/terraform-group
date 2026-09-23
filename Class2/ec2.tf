resource "aws_instance" "example" {
  ami           = "ami-0fef201115eefe936"
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer.key_name
  subnet_id = aws_subnet.main1.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")

  tags = {
    Name = "HelloWorld"
  }
}

output "ec2_public_ip" {
    value = aws_instance.example.public_ip
  
}