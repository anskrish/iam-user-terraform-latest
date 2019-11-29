resource "aws_iam_user" "this" {
  count = var.create_user ? 1 : 0

  name                 = var.name
  path                 = var.path
  force_destroy        = var.force_destroy
  permissions_boundary = var.permissions_boundary
  tags                 = var.tags
}


resource "aws_iam_access_key" "this_no_pgp" {
  count = var.create_user && var.create_iam_access_key && var.pgp_key == "" ? 1 : 0

  user = aws_iam_user.this[0].name
}


resource "aws_iam_policy" "policy" {
  name        = var.policyname
  path        = var.path
  description = var.description

  policy = var.policy
}
resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = element(concat(aws_iam_user.this.*.name, [""]), 0)
  policy_arn = "${aws_iam_policy.policy.arn}"
}
