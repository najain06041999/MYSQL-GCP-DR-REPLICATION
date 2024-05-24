variable "dr_app_db_instance_ip_configuration_network_subnet" {
  description = "Subnet for MySQL"
  type        = string
  default     = ""
}

variable "dr_name" {
  type        = string
  default     = ""
  description = "GCP DR name"
}

variable "dr_region" {
  type        = string
  default     = "us-east1"
  description = "GCP DR region"
}

variable "dr_enabled" {
  description = "DR enabled"
  type        = bool
  default     = false
}

variable "is_read_replica" {
  description = "DR enabled"
  type        = bool
  default     = false
}

variable "promote_replica" {
  description = "promote replica"
  type        = bool
  default     = false
}

variable "dr_app_dns_record_enabled" {
  description = "DNS record enabled"
  type        = bool
  default     = false
}

variable "dr_enable_backup" {
  description = "enable dr backup"
  type        = bool
  default     = true
}
