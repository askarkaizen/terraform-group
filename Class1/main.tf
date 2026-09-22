resource "aws_iam_user" "lb3" {
  name = "kaizen"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-askarz"
}

resource "aws_s3_object" "object" {
  depends_on = [aws_s3_bucket.example]
  bucket     = "kaizen-askarz"
  key        = "provider.tf"
  source     = "provider.tf"
}