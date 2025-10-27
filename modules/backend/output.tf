output "backend_service_name" {
  value = aws_ecs_service.backend_service.name
}

output "backend_task_arn" {
  value = aws_ecs_task_definition.backend_task.arn
}
