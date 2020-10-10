resource "helm_release" "cm" {
  name             = "cm"
  namespace        = "cert-manager"
  create_namespace = true
  chart            = "cert-manager"
  repository       = "https://charts.jetstack.io"
  version          = "v1.0.2"
  values = [file("values.yaml")]
}
