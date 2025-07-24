variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "comunidadedevops"
}

variable "eks_tf_s3_bucket" {
  description = "The S3 bucket for storing EKS Terraform state"
  type        = map(string)
  default = {
    bucket = "henriqzimer-comunidadedevops"
    key    = "dev/terraform.tfstate"

  }
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"

}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default = {
    Department   = "DevOps"
    Organization = "Infraestrutura and Operations"
    Project      = "EKS"
    Environment  = "Development"
  }

}
