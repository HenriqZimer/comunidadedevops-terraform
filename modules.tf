module "eks_network" {
  source       = "./modules/network"
  project_name = var.project_name
  cidr_block   = var.cidr_block
  tags         = var.tags
}
module "eks_cluster" {
  source               = "./modules/cluster"
  project_name         = var.project_name
  tags                 = var.tags
  eks_subnet_public_1a = module.eks_network.eks_subnet_public_1a
  eks_subnet_public_1b = module.eks_network.eks_subnet_public_1b
}

module "eks_managed_node_group" {
  source                = "./modules/managed-node-group"
  project_name          = var.project_name
  tags                  = var.tags
  cluster_name          = module.eks_cluster.cluster_name
  eks_subnet_private_1a = module.eks_network.eks_subnet_private_1a
  eks_subnet_private_1b = module.eks_network.eks_subnet_private_1b
}

module "aws_load_balancer_controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  tags         = var.tags
  oidc         = module.eks_cluster.oidc
  cluster_name = module.eks_cluster.cluster_name
  vpc_id       = module.eks_network.vpc_id
}

