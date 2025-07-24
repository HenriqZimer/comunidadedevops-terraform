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

variable "oidc" {
  description = "The OIDC issuer URL for the EKS cluster"
  type        = string
  default     = ""

}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = ""

}
