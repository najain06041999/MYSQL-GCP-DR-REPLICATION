###########
# Common  #
###########

name           = "non-prod"
region         = "us-west1"
project        = "<give your project>"
vpc_id         = "<give your vpc>"
infrastructure_project = "<give infrastructure project>"
dns_zone_name = "<give your dns zone>"
backend_project = "<provide your backend project>"

tags = {
  "name"           = "prod"
}
######################
# DR  #
######################
dr_enabled        = true
dr_name           = "non-prod"
dr_region         = "us-east1"
dr_tags = {
  "name"           = "prod"
}

######################
# Application MySQL  #
######################
app_db_system_is_enabled                           = false
is_read_replica                                    = false
is_read_replica_primary                            = false
promote_replica                                    = false
promote_replica_primary                            = false
enable_backup                                      = false 
dr_enable_backup                                   = false
enable_backup_primary                              = false
app_dns_record_enabled                             = false
read_replica_region                                = "us-east1"
dr_app_dns_record_enabled                          = false
master_instance_name                               = "<Give your master instance name>"
app_db_instance_ip_configuration_network_subnet    = "<give your subnet details>"
dr_app_db_instance_ip_configuration_network_subnet = "<give your dr subnet details>"
