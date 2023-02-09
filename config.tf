# config.tf - terraform backend and providers configuration

terraform {
  //   required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.63.0"
    }
    http = {
      source  = "registry.terraform.io/terraform-aws-modules/http"
      version = ">= 2.4.1"
    }
    kubernetes = {
      source  = "registry.terraform.io/hashicorp/kubernetes"
      version = ">= 2.6.0"
    }
  }
  backend "local" {

  }
}

