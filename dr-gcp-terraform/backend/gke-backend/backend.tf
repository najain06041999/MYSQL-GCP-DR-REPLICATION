terraform {
  backend "gcs" {
    bucket = "statefile"
    prefix = "terraform-state/gke-najain"
  }
}
