terraform {
  backend "s3" {
    bucket = "kazien-askarz "
    key    = "path/to/my/key"
    region = "us-east-1"
    use_lockfile = true
    //dynamodb_table = "hello-table"   -> before terraform vesrion 1.5
  }
}