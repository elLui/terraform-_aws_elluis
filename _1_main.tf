# portfolio project // blog infrastructure
# @author luis_cortez elluis.codes@gmail.com
# @version 1.00


# config aws provicer and region template

terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
  }
}

provider "aws" {
  region = var.aws_region
}