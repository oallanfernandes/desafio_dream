output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "ecs_cluster_id" {
  value = aws_ecs_cluster.frontend.id
}

output "alb_dns_name" {
  value = aws_lb.main.dns_name
}


output "ecs_sg_id" {
  value = aws_security_group.ecs_sg.id
}


output "frontend_tg_arn" {
  value = aws_lb_target_group.frontend_tg.arn
}

output "backend_tg_arn" {
  value = aws_lb_target_group.backend_tg.arn
}

output "frontend_ecr_url" {
  value = aws_ecr_repository.frontend.repository_url
}

output "alb_arn" {
  value = aws_lb.main.arn
}

output "ecs_cluster_backend_id" {
  value = aws_ecs_cluster.backend.id
}

output "backend_ecr_url" {
  value = aws_ecr_repository.backend.repository_url
}

output "backend_sg_id" {
  value = aws_security_group.backend_sg.id
}

