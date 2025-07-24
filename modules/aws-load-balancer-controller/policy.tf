resource "aws_iam_policy" "eks_controller_policy" {
  name   = "test_policy"
  policy = file("${path.module}/iam_policy.json")
  tags   = var.tags
}
