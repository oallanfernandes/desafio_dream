output "service_name" {
  description = "Nome do serviço ECS do frontend"
  value       = aws_ecs_service.frontend.name
}

output "task_definition_arn" {
  description = "ARN da Task Definition do frontend"
  value       = aws_ecs_task_definition.frontend.arn
}
