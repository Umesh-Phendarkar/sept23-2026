terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "sept-2026"

    workspaces {
      name = "sept23-2026"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket01" {
  bucket = "tf-cloud-demo-bucket-808080"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
