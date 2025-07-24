variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "comunidadedevops"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = ""

}

variable "eks_subnet_private_1a" {
  description = "The ID of the EKS private subnet 1A"
  type        = string
  default     = ""
}

variable "eks_subnet_private_1b" {
  description = "The ID of the EKS private subnet 1B"
  type        = string
  default     = ""
}
