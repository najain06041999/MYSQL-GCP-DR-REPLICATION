##################
# Common Variables
##################

variable "name" {
  type        = string
  default     = "qa-rel"
  description = "name of the resource stack or k8 namespace"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Madatory tags (e.g. `map('BUSINESSUNIT','CCGF')`"
}
variable "dr_tags" {
  type        = map(string)
  default     = {}
  description = "Madatory tags (e.g. `map('BUSINESSUNIT','CCGF')`"
}

variable "region" {
  type        = string
  default     = "us-west1"
  description = "GCP tenancy region"
}

variable "infrastructure_project" {
  description = "Infrastructure project name"
  type        = string
}

variable "vpc_id" {
  description = "Virtual private cloud"
  type        = string
}

variable "project" {
  description = "GCP application project"
  type        = string
}

variable "backend_project" {
  description = "GCP terraform backend project"
  type        = string
}
