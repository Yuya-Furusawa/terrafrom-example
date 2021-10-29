resource "aws_ecs_task_definition" "sample-task" {
  family = "sample-service"
  container_definitions = file("./task_definitions/service.json")
  task_role_arn = data.terraform_remote_state.aws_iam.outputs.ecs_task_profile_name
  network_mode = "bridge"
}