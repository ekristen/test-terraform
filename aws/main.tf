variable "region" {
  default = "us-east-2"
}

provider "aws" {
  region = var.region
}

resource "aws_iam_user" "testing" {
  name = "testing"
}
