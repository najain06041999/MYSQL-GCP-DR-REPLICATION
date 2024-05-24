
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

#Cloud Storage
module "cloud_storage" {
  source                      = "../modules/gcp/cloudstorage"
  is_enabled                  = var.cloud_storage_is_enabled
  name                        = var.name
  tags                        = var.tags
  location                    = var.location
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = var.uniform_bucket_level_access
  public_access_prevention    = var.public_access_prevention
  attributes                  = ["storage"]
}

#FileStore
module "filestore_log"{
  source                                    = "../modules/gcp/filestore"
  is_enabled                                = var.filestore_log_is_enabled
  name                                      = var.name
  region                                    = var.region
  vpc_id                                    = var.vpc_id
  infrastructure_project                    = var.infrastructure_project
  project                                   = var.project
  tags                                      = var.tags
  tier                                      = var.filestore_tier
  file_shares_capacity_gb                   = var.filestore_log_file_shares_capacity_gb
  file_shares_name                          = var.filestore_log_file_shares_name
  network_reserved_ip_range                 = var.filestore_network_reserved_ip_range
  network_connect_mode                      = var.filestore_network_connect_mode
  network_modes                             = var.filestore_network_modes
  attributes                                = ["log"]
}

module "filestore_model"{
  source                                    = "../modules/gcp/filestore"
  is_enabled                                = var.filestore_model_is_enabled
  name                                      = var.name
  region                                    = var.region
  vpc_id                                    = var.vpc_id
  infrastructure_project                    = var.infrastructure_project
  project                                   = var.project
  tags                                      = var.tags
  tier                                      = var.filestore_tier
  file_shares_capacity_gb                   = var.filestore_model_file_shares_capacity_gb
  file_shares_name                          = var.filestore_model_file_shares_name
  network_reserved_ip_range                 = var.filestore_network_reserved_ip_range
  network_connect_mode                      = var.filestore_network_connect_mode
  network_modes                             = var.filestore_network_modes
  attributes                                = ["model"]
  
}

module "filestore_orchestration"{
  source                                    = "../modules/gcp/filestore"
  is_enabled                                = var.filestore_orchestration_is_enabled
  name                                      = var.name
  region                                    = var.region
  vpc_id                                    = var.vpc_id
  infrastructure_project                    = var.infrastructure_project
  project                                   = var.project
  tags                                      = var.tags
  tier                                      = var.filestore_tier
  file_shares_capacity_gb                   = var.filestore_orchestration_file_shares_capacity_gb
  file_shares_name                          = var.filestore_orchestration_file_shares_name
  network_reserved_ip_range                 = var.filestore_network_reserved_ip_range
  network_connect_mode                      = var.filestore_network_connect_mode
  network_modes                             = var.filestore_network_modes
  attributes                                = ["orchestration"]
}

module "filestore_cdq"{
  source                                    = "../modules/gcp/filestore"
  is_enabled                                = var.filestore_cdq_is_enabled
  name                                      = var.name
  region                                    = var.region
  vpc_id                                    = var.vpc_id
  infrastructure_project                    = var.infrastructure_project
  project                                   = var.project
  tags                                      = var.tags
  tier                                      = var.filestore_tier
  file_shares_capacity_gb                   = var.filestore_cdq_file_shares_capacity_gb
  file_shares_name                          = var.filestore_cdq_file_shares_name
  network_reserved_ip_range                 = var.filestore_network_reserved_ip_range
  network_connect_mode                      = var.filestore_network_connect_mode
  network_modes                             = var.filestore_network_modes
  attributes                                = ["cdq"]
}

# Redis
module "redis" {
  source                                  = "../modules/gcp/redis"
  is_enabled                              = var.redis_is_enabled
  name                                    = var.name
  vpc_id                                  = var.vpc_id
  region                                    = var.region
  infrastructure_project                  = var.infrastructure_project
  tags                                    = var.tags
  redis_tier                              = var.redis_tier
  redis_memory_size                       = var.redis_memory_size
  redis_loactionid                        = var.redis_loactionid
  redis_alternate_loactionid              = var.redis_alternate_loactionid
  redis_connect_mode                      = var.redis_connect_mode
  redis_version                           = var.redis_version
  redis_network                           = var.redis_network
  redis_reserved_ip                       = var.redis_reserved_ip
  redis_auth_enabled                      = var.redis_auth_enabled
  redis_transit_encryption_mode           = var.redis_transit_encryption_mode
  redis_replica_count                     = var.redis_replica_count
  redis_read_replicas_mode                = var.redis_read_replicas_mode
  dns_record_enabled                      = var.redis_is_enabled && var.redis_dns_record_enabled
  dns_zone_name                           = var.dns_zone_name
  attributes                              = ["redis"]
}

# Redis In-Memory
module "redis_inmemory" {
  source                                  = "../modules/gcp/redis"
  is_enabled                              = var.redisinmemory_is_enabled
  name                                    = var.name
  vpc_id                                  = var.vpc_id
  region                                    = var.region
  infrastructure_project                  = var.infrastructure_project
  tags                                    = var.tags
  redis_tier                              = var.redisinmemory_tier
  redis_memory_size                       = var.redisinmemory_memory_size
  redis_loactionid                        = var.redisinmemory_loactionid
  redis_alternate_loactionid              = var.redisinmemory_alternate_loactionid
  redis_connect_mode                      = var.redisinmemory_connect_mode
  redis_version                           = var.redisinmemory_version
  redis_network                           = var.redisinmemory_network
  redis_reserved_ip                       = var.redisinmemory_reserved_ip
  redis_auth_enabled                      = var.redisinmemory_auth_enabled
  redis_transit_encryption_mode           = var.redisinmemory_transit_encryption_mode
  redis_replica_count                     = var.redisinmemory_replica_count
  redis_read_replicas_mode                = var.redisinmemory_read_replicas_mode
  enable_persistence                      = var.enable_persistence
  redis_persistence_mode                  = var.redisinmemory_persistence_mode
  redis_rdb_snapshot_period               = var.redisinmemory_rdb_snapshot_period
  dns_record_enabled                      = var.redisinmemory_is_enabled && var.redisinmemory_dns_record_enabled
  dns_zone_name                           = var.dns_zone_name
  attributes                              = ["redis-inmemory"]
}

#Load Balancer
module "load_balancer" {
  source                                  = "../modules/gcp/loadbalancer"
  is_enabled                              = var.loadbalancer_is_enabled
  tags                                    = var.tags
  region                                  = var.region
  infrastructure_project                  = var.infrastructure_project
  vpc_id                                  = var.vpc_id
  name                                    = var.name
  lb_project_id                           = var.loadbalancer_project_id
  list_of_NEG                             = var.loadbalancer_list_of_NEG
  backend_timeout_sec                     = var.loadbalancer_backend_timeout_sec
}
