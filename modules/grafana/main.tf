#resource "kubernetes_namespace" "kube_namespace" {
    #metadata {
        #name = "monitoring"
    #}
#}

resource "helm_release" "grafana" {
    name       =  "grafana"
    namespace  =  kubernetes_namespace.kube_namespace.metadata[0].name
    repository =  "https://grafana.github.io/helm-charts
    chart      = var.grafana-chart-name
    version    = var.grafana-chart-version

    depends_on = [kubernetes_namespace.kube_namespace]

    set {
        name  = "adminUser"
        value = var.grafana-username
    }

    set {
        name  = "adminPassword"
        value = var.grafana-password
    }

    set {

        name = "service.type"
        value = var.grafana-service-type
    }

    set {
        name  = "persistence.enabled"
        value = "false"
    }

    set {

        name = "persistence.size"
        value = "10Gi"
    }
}