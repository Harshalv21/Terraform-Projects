variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "us-west-2"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0/16"
  
}

variable "kubernetes_version" {
  description = "The Kubernetes version for the EKS cluster"
  default     = "1.21"
}