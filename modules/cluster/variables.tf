variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
}

variable "eks_subnet_public_1a" {
  description = "The ID of the first public subnet for EKS"
  type        = string
}

variable "eks_subnet_public_1b" {
  description = "The ID of the second public subnet for EKS"
  type        = string
}
