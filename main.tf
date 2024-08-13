module "prometheus" {
    source = "./modules/prometheus"
    kube-version = "36.2.0"
}

module "grafana" {
    source  = "./modules/grafana"
    kube-version = "36.2.0"
}