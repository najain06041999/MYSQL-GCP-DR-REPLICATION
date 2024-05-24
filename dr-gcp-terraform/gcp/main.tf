
#MySQL
module "app_db" {
  source                                      = "../modules/gcp/mysql"
  is_enabled                                  = var.is_read_replica_primary ? var.is_read_replica_primary : var.app_db_system_is_enabled 
#  is_read_replica                             = var.is_read_replica
  is_read_replica_primary                     = var.is_read_replica_primary 
  promote_replica_enabled                     = var.promote_replica_primary
  name                                        = var.name
  region                                      = var.region
  vpc_id                                      = var.vpc_id
  infrastructure_project                      = var.infrastructure_project
  tags                                        = var.tags
  enable_backup                               = var.is_read_replica_primary ? var.enable_backup_primary : var.enable_backup
  db_instance_settings_tier                   = var.app_db_instance_settings_tier
  db_instance_settings_disk_size              = var.app_db_instance_settings_disk_size
  db_instance_version                         = var.app_db_instance_version
  dns_record_enabled                          = var.app_dns_record_enabled
  database_flags_sql_require_primary_key      = var.app_db_instance_database_flags_sql_require_primary_key
  database_flags_sql_mode                     = var.app_db_instance_database_flags_sql_mode
  database_flags_binlog_expire_logs_seconds   = var.app_db_instance_database_flags_binlog_expire_logs_seconds
  db_instance_deletion_protection             = var.app_db_instance_deletion_protection
  dns_zone_name                               = var.dns_zone_name
  db_instance_ip_configuration_network_subnet = var.app_db_instance_ip_configuration_network_subnet
  master_instance_name                        = var.master_instance_name
  attributes                                  = ["db"]
}
