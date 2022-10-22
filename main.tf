provider "aws" {
  region  = var.region
  profile = var.profile
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "franz-eks"
}
