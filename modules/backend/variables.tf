variable "project_name" {}
variable "backend_image_url" {}
variable "cluster_id" {}
variable "private_subnets" { type = list(string) }
variable "backend_sg_id" {}
variable "target_group_arn" {}