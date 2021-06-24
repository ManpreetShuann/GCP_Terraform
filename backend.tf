provider "template" {
  version = "~>2.1.2"
}

provider "google" {
  version = "=3.23.0"
  project = var.project_name
}

provider "google-beta" {
  version = "=3.23.0"
  project = var.project_name
  region  = var.region
  zone    = var.zone
}

terraform {
  require_version = "=1.0.0"
  backend "gcs" {
    bucket = "gcs-jenkins-tf-backend"
    prefix = "secops-316111/main"
  }
}
