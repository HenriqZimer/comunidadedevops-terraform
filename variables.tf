variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "eks_tf_s3_bucket" {
  description = "The S3 bucket for storing EKS Terraform state"
  type        = map(string)
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
}
