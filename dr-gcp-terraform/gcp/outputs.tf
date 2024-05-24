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
