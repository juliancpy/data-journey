# Terraform provider for specific version.
# https://registry.terraform.io/providers/hashicorp/terraform/latest/ docs
# Google Cloud Platform Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs

provider "google" {
  region  = var.region
  project = var.project
}

terraform {
  required_version = "1.1.6"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.36.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.17.0"  # Iris-Aus and Pamco requires 2.7.1 while Route, Compass, Iris and Adhoc requires 2.12.1
    }
  }
}