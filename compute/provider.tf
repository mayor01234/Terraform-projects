terraform {
  required_version = ">=1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}