module "vpc" {
  source           = "../../modules/vpc"
  name             = var.name
  vpc_cidr         = var.vpc_cidr
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
}

module "iam" {
  source = "../../modules/iam"
  name   = var.name
}

module "eks" {
  source                  = "../../modules/eks"
  name                    = var.name
  subnet_ids              = module.vpc.public_subnets
  cluster_role_arn        = module.iam.eks_cluster_role_arn
  node_role_arn           = module.iam.eks_node_role_arn
  instance_type           = var.instance_type
  desired_capacity        = var.desired_capacity
  min_size                = var.min_size
  max_size                = var.max_size
}
