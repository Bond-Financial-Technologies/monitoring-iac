provider "aws" {
    region = var.aws_region
}

provider "kubernetes" {
   host     =
   cluster_ca_certificate =
   token    = 
}

provider "helm" {
  kubernetes {
   host     =
   cluster_ca_certificate  =
   token  =
  }
}

provider "kubectl" {

   host     =
   cluster_ca_certificate =
   token    = 
 
}