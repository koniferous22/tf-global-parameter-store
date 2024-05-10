terraform {
  required_version = "~> 1.8"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    key = "tf-parameter-store/dev/terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = var.default_resource_tags
  }
}
