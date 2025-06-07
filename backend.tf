terraform {
  backend "s3" {
    bucket = "mydev-tf-state-bucket-project-terraform-rahul-1234"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table1"
  }
}
