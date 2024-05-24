output "rg_name" {
  value = length(module.app_db.project) > 0 ? module.app_db.project[0] : null
}

output "app_db_system_hostname" {
  value = module.app_db.dnsrecord_domain_name
}

output "app_db_system_ip_address" {
  value = module.app_db.ip_address
}

output "app_db_system_admin_username" {
  value     = module.app_db.admin_username
  sensitive = true
}
output "app_db_system_admin_password" {
  value     = module.app_db.admin_password
  sensitive = true
}

output "bucket_name" {
  value       = module.cloud_storage.name
  description = "Cloud storage bucket name"
}

output "cloud_console_url"{
  value       = length(module.cloud_storage.name) > 0 ? "https://console.cloud.google.com/storage/browser/${module.cloud_storage.name[0]}" : null
  description = "URL to access the bucket in Google Cloud Console"
}

output "rds_db_server_id" {
  value = length(module.app_db.db_instance) > 0 ? module.app_db.db_instance[0] : null
}

output "filestore_log_ip_address" {
  value = module.filestore_log.ip_address
}

output "filestore_log_instance_name" {
  value = module.filestore_log.instance_name
}

output "filestore_model_ip_address" {
  value = module.filestore_model.ip_address
}

output "filestore_model_instance_name" {
  value = module.filestore_model.instance_name
}

output "filestore_orchestration_ip_address" {
  value = module.filestore_orchestration.ip_address
}

output "filestore_orchestration_instance_name" {
  value = module.filestore_orchestration.instance_name
}

output "filestore_cdq_ip_address" {
  value = module.filestore_cdq.ip_address
}

output "filestore_cdq_instance_name" {
  value = module.filestore_cdq.instance_name
}

output "redis_instance_name" {
  description = "The name of the created Redis instance"
  value       = module.redis.instance_name
}

output "redis_region" {
  description = "The region of the created Redis instance"
  value       = module.redis.region
}

output "redis_host" {
  description = "The host of the created Redis instance"
  value       = module.redis.host
}

output "redis_port" {
  description = "The port of the created Redis instance"
  value       = module.redis.port
}

output "redis_auth_string" {
  description = "The port of the created Redis instance"
  value       = module.redis.auth_string
  sensitive = true
}

output "redisinmemory_instance_name" {
  description = "The name of the created Redis instance"
  value       = module.redis_inmemory.instance_name
}

output "redisinmemory_region" {
  description = "The region of the created Redis instance"
  value       = module.redis_inmemory.region
}

output "redisinmemory_host" {
  description = "The host of the created Redis instance"
  value       = module.redis_inmemory.host
}

output "redisinmemory_port" {
  description = "The port of the created Redis instance"
  value       = module.redis_inmemory.port
}

output "redisinmemory_auth_string" {
  description = "The port of the created Redis instance"
  value       = module.redis_inmemory.auth_string
  sensitive = true
}

output "loadbalancer_frontend_ip" {
  description = "Frontend IP of Load balancer"
  value       = module.load_balancer.frontend_ip
}

output "loadbalancer_url_map" {
  description = "The name of the url map"
  value       = module.load_balancer.url_map
}

output "loadbalancer_region" {
  description = "The region of Load balancer"
  value       = module.load_balancer.region
}

output "loadbalancer_backend_service" {
  description = "The backend services of Load balancer"
  value       = module.load_balancer.backend_service
}

output "redis_hostname" {
  value = module.redis.dnsrecord_domain_name
}

output "redisinmemory_hostname" {
  value = module.redis_inmemory.dnsrecord_domain_name
}
