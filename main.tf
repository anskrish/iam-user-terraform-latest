provider "aws" {
  region  = "${var.region}"
  version = "~> 2.20"
}

terraform {
  backend "s3" {
    bucket = "rest2dww"
    region = "us-west-2"
  }
}

module "iam_user" {
  source = "./modules/iam-user"
  name = "${var.tags["environment"]}-${var.tags["user-name"]}"

  create_iam_access_key         = "${var.acceskeycreate}"
  policyname        = "${var.tags["environment"]}-${var.tags["user-name"]}-policy"
  path        = "/"
  description = "${var.policy-description}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": {
        "Effect": "Allow",
        "Action": "sts:AssumeRole",
        "Resource": [
            "arn:aws:iam::015657548652:role/ViewBilling"
        ]
    }
}

EOF
}
