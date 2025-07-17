output "aws_region" {
  description = "value of the AWS region"
  value = var.aws_region
}

output "cluster_id" {
  description = "value of the EKS cluster ID"
  value = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "value of the EKS cluster endpoint"
  value = module.eks.cluster_endpoint
}

output "security_group_id" {
  description = "value of the security group ID for worker management"
  value = aws_security_group.all_worker_mgmt.id
}

output "oidc_provider_arn" {
  description = "value of the OIDC provider ARN for the EKS cluster"
  value = module.eks.oidc_provider_arn
}
 
output "vpc_id" {
  description = "value of the VPC ID"
  value = module.vpc.vpc_id
}