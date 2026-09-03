terraform {
  required_version = ">=1.15.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.50.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0.1"
    }
  }

  backend "s3" {
    bucket       = "amu.01"
    key          = "k8s_project/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}

