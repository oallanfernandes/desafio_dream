terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "infra" {
  source                 = "./modules/infra"
  project_name           = var.project_name
  region                 = var.aws_region
  vpc_cidr               = var.vpc_cidr
  public_subnet_cidrs    = var.public_subnet_cidrs
  private_subnet_cidrs   = var.private_subnet_cidrs
  account_id             = 786427517403
}


module "frontend" {
  source                 = "./modules/frontend"
  project_name           = var.project_name
  region                 = var.aws_region
  vpc_id                 = module.infra.vpc_id
  cluster_id             = module.infra.ecs_cluster_id
  subnet_ids             = module.infra.public_subnets
  security_group_id      = module.infra.ecs_sg_id
  target_group_arn       = module.infra.frontend_tg_arn
  frontend_image_url     = module.infra.frontend_ecr_url
  alb_arn                = module.infra.alb_arn

}

module "backend" {
  source              = "./modules/backend"
  project_name        = var.project_name
  cluster_id          = module.infra.ecs_cluster_backend_id
  private_subnets     = module.infra.private_subnets
  target_group_arn    = module.infra.backend_tg_arn
  backend_sg_id       = module.infra.backend_sg_id
  backend_image_url   = module.infra.backend_ecr_url
}
