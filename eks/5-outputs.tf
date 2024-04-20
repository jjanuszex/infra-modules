output "eks_name" {
  value = aws_eks_cluster.this.name
}

output "openid_provider_arn" {
  value = aws_iam_openid_connect_provider.this[0].arn
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "node_group_names" {
  description = "The names of the EKS node groups"
  value       = [for ng in aws_eks_node_group.general : ng.name]
}