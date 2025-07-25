variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "eks_subnet_private_1a" {
  description = "The ID of the EKS private subnet 1A"
  type        = string
}

variable "eks_subnet_private_1b" {
  description = "The ID of the EKS private subnet 1B"
  type        = string
}
