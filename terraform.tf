# Terraform remote state - to be replaced with an appropriate bucket
terraform {
  backend "s3" {
    bucket  = "bits-digital-platform"
    key     = "opensearch-test/terraform.tfstate"
    region  = "eu-west-1"
    acl     = "bucket-owner-full-control"
    encrypt = true
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}
