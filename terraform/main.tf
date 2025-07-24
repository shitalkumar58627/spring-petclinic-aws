module "stackgen_1cee0b8c-b9be-595e-aa25-cc334fcf3b64" {
  source               = "./modules/azurerm_key_vault_key"
  curve                = "P-256"
  expiration_date      = "2025-08-02"
  expire_after         = null
  key_name             = "spring-petclinic-init"
  key_opts             = ["encrypt", "decrypt", "sign", "unwrapKey", "verify", "wrapKey"]
  key_size             = 2048
  key_type             = "RSA"
  key_vault_id         = "spring-petclinic-init"
  location             = var.location
  not_before_date      = null
  notify_before_expiry = null
  resource_group_name  = local.resource_group_name
  time_after_creation  = null
  time_before_expiry   = null
}

module "stackgen_2e89f33d-e3d7-43c3-8f60-452e1ce4e149" {
  source              = "./modules/azurerm_role_definition"
  actions             = null
  assignable_scopes   = null
  data_actions        = ["Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read", "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/delete", "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/deleteBlobVersion/action"]
  description         = "Role definition for spring-petclinic-azure spring-petclinic-init Azure Key Vault Key"
  location            = var.location
  name                = "spring-petclinic-azure spring-petclinic-init Azure Storage Container Role"
  not_actions         = null
  not_data_actions    = null
  principal_id        = module.stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3.principal_id
  resource_group_name = local.resource_group_name
  scope               = "${module.stackgen_e028fb84-ce37-54f0-9e0d-2f31c9ac840d.id}"
}

module "stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3" {
  source                  = "./modules/azurerm_user_assigned_managed_identity"
  custom_role_definitions = []
  location                = var.location
  name                    = "spring-petclinic-azure-role"
  resource_group_name     = local.resource_group_name
  role_assignments        = []
}

module "stackgen_82cefd37-d5ca-490f-87a1-8d67eb74867c" {
  source              = "./modules/azurerm_role_definition"
  actions             = ["Microsoft.KeyVault/vaults/keys/read"]
  assignable_scopes   = null
  data_actions        = ["Microsoft.KeyVault/vaults/keys/decrypt/action"]
  description         = "Role definition for spring-petclinic-azure spring-petclinic-init Azure Key Vault Key"
  location            = var.location
  name                = "spring-petclinic-azure spring-petclinic-init Azure Key Vault Key Role"
  not_actions         = null
  not_data_actions    = null
  principal_id        = module.stackgen_76da7cb4-51f4-50e6-aae5-618d34eae8b3.principal_id
  resource_group_name = local.resource_group_name
  scope               = "${module.stackgen_1cee0b8c-b9be-595e-aa25-cc334fcf3b64.id}"
}

module "stackgen_90e0852d-ec7b-54b7-b540-8285e85c22b3" {
  source                                = "./modules/azurerm_postgresql_db_server"
  ad_admin_login_name                   = null
  ad_admin_object_id                    = null
  ad_admin_tenant_id                    = null
  administrator_login                   = "admin"
  administrator_login_password          = var.administrator_login_password_90e0852d-ec7b-54b7-b540-8285e85c22b3
  auto_grow_enabled                     = true
  backup_retention_days                 = 7
  charset                               = "UTF8"
  collation                             = "English_United States.1252"
  email_addresses                       = []
  enable_active_directory_administrator = false
  enable_threat_detection               = false
  geo_redundant_backup_enabled          = true
  location                              = var.location
  postgresql_configuration              = {}
  postgresql_database_name              = "db"
  postgresql_server_name                = "db"
  postgresql_version                    = "11"
  public_network_access_enabled         = false
  resource_group_name                   = local.resource_group_name
  sku_name                              = "GP_Gen5_4"
  ssl_enforcement_enabled               = true
  ssl_minimal_tls_version_enforced      = "TLS1_2"
  storage_mb                            = 640000
  subnet_ids                            = []
  tags                                  = {}
}

module "stackgen_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf" {
  source                                = "./modules/azurerm_postgresql_db_server"
  ad_admin_login_name                   = null
  ad_admin_object_id                    = null
  ad_admin_tenant_id                    = null
  administrator_login                   = "admin"
  administrator_login_password          = var.administrator_login_password_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf
  auto_grow_enabled                     = true
  backup_retention_days                 = 7
  charset                               = "UTF8"
  collation                             = "English_United States.1252"
  email_addresses                       = []
  enable_active_directory_administrator = false
  enable_threat_detection               = false
  geo_redundant_backup_enabled          = true
  location                              = var.location
  postgresql_configuration              = {}
  postgresql_database_name              = "db"
  postgresql_server_name                = "db"
  postgresql_version                    = "11"
  public_network_access_enabled         = false
  resource_group_name                   = local.resource_group_name
  sku_name                              = "GP_Gen5_4"
  ssl_enforcement_enabled               = true
  ssl_minimal_tls_version_enforced      = "TLS1_2"
  storage_mb                            = 640000
  subnet_ids                            = []
  tags                                  = {}
}

module "stackgen_c56101c6-3af6-5c6e-87b8-5b045c2029c1" {
  source               = "./modules/azurerm_redis_cache"
  cache_name           = null
  capacity             = null
  end_ip               = null
  family               = "C"
  firewall_rule_name   = null
  location             = var.location
  minimum_tls_version  = "1.2"
  non_ssl_port_enabled = false
  patch_schedule = [{
    day_of_week        = "Sunday"
    maintenance_window = "PT5H"
    start_hour_utc     = 2
  }]
  public_network_access_enabled = false
  resource_group_name           = local.resource_group_name
  sku_name                      = "Standard"
  start_ip                      = null
}

module "stackgen_e028fb84-ce37-54f0-9e0d-2f31c9ac840d" {
  source               = "./modules/azurerm_storage_container"
  container_name       = "spring-petclinic-init"
  location             = var.location
  name                 = "spring-petclinic-azure"
  resource_group_name  = local.resource_group_name
  storage_account_name = "spring-petclinic-azure"
}

