variable "enable_argocd" {
  description = "Determines whether to deploy argocd"
  type        = bool
  default     = false
}

variable "argocd_helm_verion" {
  description = "argocd Helm verion"
  type        = string
}


resource "helm_release" "argocd" {
  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "3.35.4"

  values = [file("values/argocd.yaml")]
}
