terraform {
  backend "s3" {
    bucket         = "esecure-power-tuning-tfstate"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "esecure-power-tuning-tf-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region # us-east-1
}

provider "aws" {
  alias  = "usw2"
  region = "us-west-2"
}
