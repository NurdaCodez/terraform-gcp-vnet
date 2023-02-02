terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "nurdabucket"
    prefix = "terraform/state"
  }
}