module "eks_network" {
  source       = "./modules/network"
  project_name = var.project_name
  cidr_block   = var.cidr_block
  tags         = local.tags
}

module "eks_cluster" {
  source               = "./modules/cluster"
  project_name         = var.project_name
  tags                 = local.tags
  eks_subnet_public_1a = module.eks_network.eks_subnet_public_1a
  eks_subnet_public_1b = module.eks_network.eks_subnet_public_1b
}

module "eks_managed_node_group" {
  source                = "./modules/managed-node-group"
  project_name          = var.project_name
  cluster_name          = module.eks_cluster.cluster_name
  eks_subnet_private_1a = module.eks_network.eks_subnet_private_1a
  eks_subnet_private_1b = module.eks_network.eks_subnet_private_1b
  tags                  = local.tags
}

module "aws_load_balancer_controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  tags         = local.tags
}
