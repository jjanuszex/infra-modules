variable "enable_argocd" {
  description = "Determines whether to deploy argocd"
  type        = bool
  default     = false
}

variable "argocd_helm_verion" {
  description = "argocd Helm verion"
  type        = string
}
