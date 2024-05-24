terraform {
  backend "gcs" {
    bucket = "ccgfqatfstate"
    prefix = "terraform-state/idmcp-qa-rel-gke-najain"
  }
}
