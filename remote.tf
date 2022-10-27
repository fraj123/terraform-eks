terraform {
  backend "s3" {}
}

data "terraform_remote_state" "state" {
  backend   = "s3"
  workspace = "${var.workspace}"

  config = {
    bucket  = "${var.cluster_name}-bucket"
    key     = "state/${var.environment}/terraform.tfstate"
    region  = "${var.region}"
    profile = "${var.profile}"
  }
}

