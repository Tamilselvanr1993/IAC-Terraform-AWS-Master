# Terraform Block
terraform {
  required_version = "~> 1.1.0" # which means any version equal & above 1.1.0 like 1.1.3, 1.1.7 etc and < 1.1.x
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.0.0"
    }
    time = {
      source = "hashicorp/time"
      version = "~> 0.6.0"
    }      
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
