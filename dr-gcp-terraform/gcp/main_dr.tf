#MySQL
module "dr_app_db" {
  source                                      = "../modules/gcp/mysql"
  is_read_replica_enabled                     = var.is_read_replica
  promote_replica_enabled                     = var.promote_replica
  enable_backup                               = var.dr_enable_backup
  name                                        = var.dr_name
  region                                      = var.dr_region
  read_replica_region                         = var.read_replica_region
  vpc_id                                      = var.vpc_id
  infrastructure_project                      = var.infrastructure_project
  tags                                        = var.dr_tags
  db_instance_settings_tier                   = var.app_db_instance_settings_tier
  db_instance_settings_disk_size              = var.app_db_instance_settings_disk_size
  db_instance_version                         = var.app_db_instance_version
  dns_record_enabled                          = var.dr_app_dns_record_enabled
  database_flags_sql_require_primary_key      = var.app_db_instance_database_flags_sql_require_primary_key
  database_flags_sql_mode                     = var.app_db_instance_database_flags_sql_mode
  database_flags_binlog_expire_logs_seconds   = var.app_db_instance_database_flags_binlog_expire_logs_seconds
  db_instance_deletion_protection             = var.app_db_instance_deletion_protection
  dns_zone_name                               = false
  db_instance_ip_configuration_network_subnet = var.dr_app_db_instance_ip_configuration_network_subnet
  // master_instance_name                        = var.is_read_replica ? tolist(module.app_db.master_instance_name)[0] : ""
  master_instance_name                        = var.master_instance_name
  attributes                                  = ["db-dr"]
}
