resource "helm_release" "traefik" {
  name = "traefik"
  namespace = "traefik"
  create_namespace = true
  repository = "https://repo.chartcenter.io"
  chart = "traefik/traefik"
}