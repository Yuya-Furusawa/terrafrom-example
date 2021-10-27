resource "aws_iam_policy" "deploy-policy" {
  name = "deploy-policy"
  path = "/"
  description = "deploy policy"
  policy = file("aws_iam_policies/deploy_policy.json")
}