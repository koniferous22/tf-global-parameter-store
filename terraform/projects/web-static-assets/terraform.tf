terraform {
  required_version = "~> 1.12"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

locals {
  project_name = "web-static-assets"
}

