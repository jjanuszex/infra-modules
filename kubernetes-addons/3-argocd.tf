data "aws_iam_openid_connect_provider" "this" {
  arn = var.openid_provider_arn
}

resource "helm_release" "argocd" {
  count = var.enable_argocd ? 1 : 0

  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = var.cluster_autoscaler_helm_verion

  values = [file("values/argocd.yaml")]

}
