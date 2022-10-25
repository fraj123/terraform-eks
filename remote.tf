terraform {
  backend "s3" {}
}

data "terraform_remote_state" "state" {
  backend = "s3"
  config {
    bucket  = "${var.cluster_name}"
    region  = "${var.region}"
    key     = "${var.application}/${var.environment}"
    profile = "${var.profile}"
  }
}

