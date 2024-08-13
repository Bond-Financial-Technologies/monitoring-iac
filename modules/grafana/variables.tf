variable "grafana-chart-name" {
    description = "Name of the grafana chart name"
    type        = string
}

variable "grafana-chart-version" {
    description = "version of the grafana chart name"
    type        = string
}

variable "grafana-username" {
    description = "grafana user name"
    type        = string
}

variable "grafana-password" {
    description = "grafana user name"
    type        = string
}

variable "grafana-service-type" {
    description = "grafana kubernetes service type"
    type        = string
}

variable "namespace_dependency" {
    description = "grafana namespace"
    type        = any
}