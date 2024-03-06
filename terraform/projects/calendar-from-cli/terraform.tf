terraform {
  required_version = "~> 1.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

locals {
  project_name = "calendar"
}
