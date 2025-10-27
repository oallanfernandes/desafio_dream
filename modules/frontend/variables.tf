variable "project_name" {}
variable "cluster_id" {}
variable "subnet_ids" { type = list(string)}
variable "security_group_id" {}
variable "target_group_arn" {}
variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}
variable "frontend_image_url" {}
variable "alb_arn" {}
variable "vpc_id" {}
