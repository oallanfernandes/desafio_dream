resource "aws_ecs_cluster" "frontend" {
  name = "${var.project_name}-frontend-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_cluster" "backend" {
  name = "${var.project_name}-backend-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
