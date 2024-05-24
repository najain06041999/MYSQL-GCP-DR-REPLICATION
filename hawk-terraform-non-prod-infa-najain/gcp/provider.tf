#GCP default provider configuration
provider "gcp" {
  project = var.project
  region  = var.region
}