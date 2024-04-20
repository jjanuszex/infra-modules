variable "env" {
  description = "Environment name."
  type        = string
}

variable "eks_name" {
  description = "Name of the cluster."
  type        = string
}

variable "enable_cluster_autoscaler" {
  description = "Determines whether to deploy cluster autoscaler"
  type        = bool
  default     = false
}

variable "cluster_autoscaler_helm_verion" {
  description = "Cluster Autoscaler Helm verion"
  type        = string
}

variable "openid_provider_arn" {
  description = "IAM Openid Connect Provider ARN"
  type        = string
}

variable "enable_argocd" {
  description = "Determines whether to deploy argocd"
  type        = bool
  default     = false
}

variable "argocd_helm_verion" {
  description = "argocd Helm verion"
  type        = string
}

variable "values_file" {
  description = "Path to the values file"
  type        = string
}

## LB Controller

variable "enable_aws_lb_controller" {
  description = "Determines whether to deploy lb controller"
  type        = bool
  default     = false
}

variable "aws_lb_controller_helm_verion" {
  description = "argocd Helm verion"
  type        = string
  default     = "1.4.1"
}

variable "aws_lb_controller_policy" {
  description = "Path to the AWSLoadBalancerController policy file"
  type        = string
  default     = "./AWSLoadBalancerController.json"
}

## Karpenter

variable "enable_karpenter" {
  description = "Determines whether to deploy karpenter"
  type        = bool
  default     = false
}

variable "karpenter_helm_verion" {
  description = "Karpenter Helm verion"
  type        = string
  default     = "v0.13.1"
  
}

variable "eks_cluster_endpoint" {
  description = "EKS Cluster Endpoint"
  type        = string
}