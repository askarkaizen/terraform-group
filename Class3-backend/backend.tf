terraform {
  backend "s3" {
    bucket = "kazien-askarz "
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}