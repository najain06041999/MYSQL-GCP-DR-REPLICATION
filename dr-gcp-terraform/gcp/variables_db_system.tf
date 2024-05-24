
variable "app_db_system_is_enabled" {
  type        = bool
  default     = false
  description = "Create Mysql db system?"
}

variable "app_db_instance_settings_tier" {
  description = "Database tier"
  type        = string
  default     = "db-custom-4-15360"
}

variable "app_db_instance_version" {
  description = "Database version"
  type        = string
  default     = "MYSQL_8_0_34"
}

variable "app_dns_record_enabled" {
  description = "DNS record enabled"
  type        = bool
  default     = false
}

variable "app_db_instance_settings_disk_edition" {
  description = "Database disk edition"
  type        = string
  default     = "ENTERPRISE"
}

variable "app_db_instance_settings_disk_size" {
  description = "Database disk size"
  type        = number
  default     = 20
}

variable "app_db_instance_settings_availability_type" {
  description = "Database avalibility type"
  type        = string
  default     = "ZONAL"
}

variable "app_db_instance_database_flags_sql_require_primary_key" {
  description = "Database flags sql_require_primary_key"
  type        = string
  default     = "off"
}

variable "app_db_instance_database_flags_sql_mode" {
  description = "Database flags sql_mode"
  type        = string
  default     = "ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"
}

variable "app_db_instance_database_flags_binlog_expire_logs_seconds" {
  description = "Database flag binlog_expire_logs_seconds"
  type        = string
  default     = "172800"
}

variable "app_db_instance_deletion_protection" {
  description = "Database flag deletion_protection"
  type        = bool
  default     = false
}

variable "dns_zone_name" {
  description = "The name of the Zone"
  type        = string
  default     = "infacloudops-net"
}

variable "app_db_instance_ip_configuration_network_subnet" {
  description = "Subnet for MySQL"
  type        = string
  default     = ""
}

variable "enable_backup" {
  description = "enable backup"
  type        = bool
  default     = true
}

variable "read_replica_region" {
  description = "replica region"
  type        = string
  default     = ""
}
variable "master_instance_name" {
  description = "master instance for DR"
  type        = string
  default     = ""
}

variable "is_read_replica_primary" {
  description = "is_read_replica_primary"
  type        = bool
  default     = false
}

variable "promote_replica_primary" {
  description = "promote_replica_primary"
  type        = bool
  default     = false
}

variable "enable_backup_primary" {
  description = "enable_backup_primary"
  type        = bool
  default     = false
}
