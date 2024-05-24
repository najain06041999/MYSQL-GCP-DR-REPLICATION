###########
# Common  #
###########

name           = "qa-rel-3224"
region         = "us-west1"
project        = "infa-iicsqa-idmcp-relpod"
vpc_id         = "cdgc-qa-rel-vpc"
infrastructure_project = "infa-iicsqa-infrastructure"
dns_zone_name = "infacloudops-net"
backend_project = "infa-iicsqa-ccgf-relpod"

tags = {
  "applicationenv" = "qa"
  "businessentity" = "dqgcloud"
  "businessunit"   = "idmcp"
  "owneremail"     = "dqghawkdevops_at_informatica_com"
  "pod"            = "qarel"
  "servicename"    = "qarel"
  "alertgroup"     = "dqghawkdevops_at_informatica_com"
  "name"           = "qarel"
}
######################
# DR  #
######################
dr_enabled        = true
dr_name           = "qa-rel-3224"
dr_region         = "us-east1"
dr_tags = {
  "applicationenv" = "qa"
  "businessentity" = "dqgcloud"
  "businessunit"   = "idmcp"
  "owneremail"     = "dqghawkdevops_at_informatica_com"
  "pod"            = "qarel"
  "servicename"    = "qarel"
  "alertgroup"     = "dqghawkdevops_at_informatica_com"
  "name"           = "qarel"
}

######################
# Application MySQL  #
######################
app_db_system_is_enabled                           = false
is_read_replica                                    = true
is_read_replica_primary                            = true
promote_replica                                    = false
promote_replica_primary                            = true
enable_backup                                      = true 
dr_enable_backup                                   = false
enable_backup_primary                              = true
app_dns_record_enabled                             = false
read_replica_region                                = "us-east1"
dr_app_dns_record_enabled                          = false
master_instance_name                               = "idmcp-qa-rel-3224-db"
app_db_instance_ip_configuration_network_subnet    = "cdgc-qa-rel-sql-subnet"
dr_app_db_instance_ip_configuration_network_subnet = "cdgc-qa-rel-dr-sql-subnet"

######################
# FileStore  #
######################
filestore_tier                      = "ENTERPRISE"
filestore_network_connect_mode      = "PRIVATE_SERVICE_ACCESS"
filestore_network_reserved_ip_range = "cdgc-qa-rel-psc-subnet"
filestore_network_modes             = ["MODE_IPV4"]

######################
# FileStore Log  #
######################
filestore_log_is_enabled              = false
filestore_log_file_shares_capacity_gb = 1024
filestore_log_file_shares_name        = "log_file_share"

##########
# REDIS #
##########

redis_is_enabled                  = false
redis_tier                        = "STANDARD_HA"
redis_memory_size                 = 6
redis_loactionid                  = "us-west1-a"
redis_alternate_loactionid        = "us-west1-b"
redis_connect_mode                = "PRIVATE_SERVICE_ACCESS"
redis_version                     = "REDIS_6_X"
redis_network                     = "cdgc-qa-rel-vpc"
redis_reserved_ip                 = "cdgc-qa-rel-psc-redis-subnet"
redis_auth_enabled                = true
redis_transit_encryption_mode     = "DISABLED"
redis_read_replicas_mode          = "READ_REPLICAS_DISABLED"
redis_replica_count               = 1

#################
# LOAD BALANCER #
#################

loadbalancer_is_enabled             = false
loadbalancer_project_id             = "infa-iicsqa-ccgf-gke-relpod"
#These are the gateway names which are used to create NEG for the backend. 
loadbalancer_list_of_NEG = {
  "default"   = "idmcp-qa-rel-api-gateway",
  "mgmt"      = "idmcp-qa-rel-internal-ccgf-gateway",
  "admin"     = "ccgf-qa-rel-admin-ui-external-ccgf-gateway",
  "cdgc-api"  = "ccgf-qa-rel-api-gateway",
  "cdgc"      = "ccgf-qa-rel-ccgf-gateway",
  "cdmp"      = "ccgf-qa-rel-cdmpuiapp-external-ccgf-gateway",
  "prepui"    = "ccgf-qa-rel-prep-ui-app-external-ccgf-gateway",
  "ratelimit" = "ccgf-qa-rel-public-api-gateway",
  "argo"      = "ccgf-qa-rel-argo-gateway"
}
