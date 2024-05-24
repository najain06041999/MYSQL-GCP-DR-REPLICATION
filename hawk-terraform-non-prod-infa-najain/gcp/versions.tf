terraform {

  #terraform core version
  required_version = "~> 1.5.0"

  #gcp provider plugin version
  required_providers {
    gcp = {
      source  = "hashicorp/google"
      version = "~> 5.22.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.22.0"
    }
  }
}
