resource "aws_eks_node_group" "eks_managed_node_group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-node-group"
  node_role_arn   = aws_iam_role.eks_mng_role.arn
  subnet_ids = [
    var.eks_subnet_private_1a,
    var.eks_subnet_private_1b
  ]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_mng_role_attachments_worker,
    aws_iam_role_policy_attachment.eks_mng_role_attachments_ecr,
    aws_iam_role_policy_attachment.eks_mng_role_attachments_cni,
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-mng-node-group"
    }
  )
}



