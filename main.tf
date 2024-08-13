module "prometheus" {
    source = "./modules/prometheus"
    namespace = var.prometheus_namespace
}

module "grafana" {
    source  = "./modules/grafana"
    namespace = module.prometheus.namespace
    namespace_dependency = module.prometheus
}