resource "kubernetes_namespace" "kube_namespace" {
    metadata {
        name = var.namespace-name
    }
}

resource "helm_release" "prometheus" {
    name       = "prometheus"
    namespace  = kubernetes_namespace.kube_namespace.id
    repository = "https://prometheus-community.github.io/helm-charts"
    chart      = "prometheus"
    version    = "20.2.0"
    create_namespace = "true"
    #values = [
        #file("values.yaml")
    #]

    timeout = 2000
    set {
        name = "podSecurityPolicy.enabled"
        value = "true"
    }

    set {
        name = "server.persistentVolume.enabled"
        value = "false"
    }
    set {
        name = "server\\.resources"
        value = yamlencode({
            limits = {
                cpu = "200m"
                memory = "50Mi
            }
            requests = {
                cpu  =  "100m"
                memory =  "30Mi"
            }
        })
    }
}