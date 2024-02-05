
provider "aws" {
  region     = "${var.region}"
}


terraform {
  backend "s3" {
    bucket         = "san-bucket638381462033"
    dynamodb_table = "san-table"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    
  }
}
