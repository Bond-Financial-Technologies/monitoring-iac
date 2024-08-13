variable "namespace-name" {
    description = "namespace for prometheus"
    type        = string
}

variable "prometheus-chart-name" {
    description = "Name of the grafana chart name"
    type        = string
}

variable "prometheus-chart-version" {
    description = "version of the grafana chart name"
    type        = string
}