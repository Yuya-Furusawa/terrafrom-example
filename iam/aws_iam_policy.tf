resource "aws_iam_policy" "deploy-policy" {
  name = "deploy-policy"
  path = "/"
  description = "deploy policy"
  policy = file("aws_iam_policies/deploy_policy.json")
}

resource "aws_iam_policy" "deploy-ecs" {
  name = "deploy-ecs"
  path = "/"
  description = "deploy ecs policy"
  policy = file("aws_iam_policies/deploy.json")
}

resource "aws_iam_policy" "sample_ecs_instance_policy" {
  name = "sample-ecs-instance-policy"
  path = "/"
  description = ""
  policy = file("aws_iam_policies/ecs_instance_policy.json")
}