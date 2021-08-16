module "resource_group" {
  source = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
  res_rg_name = var.rg_name
  res_location = var.location
  res_tags = var.tags
}

module "storage_account" {
  source = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_account"
  res_sa_name = var.sa_name
  res_sa_rg_name = module.resource_group.res_out_rg_name
  res_location = var.location
  res_account_tier = var.account_tier
  res_replication_type = var.account_replication_type
  res_account_type = var.account_type
  res_tags = var.tags
}

module "key_vault" {
  source = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault"
  res_kv_name         = var.kv_name
  res_location        = var.location
  res_rg_name         = module.resource_group.res_out_rg_name
  res_disk_encryption = var.disk_encryption
  res_tenant_id       = var.tenant_id
  res_tags            = var.tags
}

module "storage_container" {
  source = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_container"
  res_container_name         = var.res_container_name
  res_sa_name                = module.storage_account.res_out_sa_name
  res_access_type            = var.res_access_type
}

module "key_vault_policy" {
  source = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault_policy"
  res_key_vault_id       = module.key_vault.res_out_kv_id
  res_tenant_id          = var.tenant_id
  res_object_id          = data.azurerm_client_config.current.object_id
  res_key_permissions    = var.res_key_permissions
  res_secret_permissions = var.res_secret_permissions
}

module "key_vault_encrypt" {
  source = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault_encrypt"
  res_kvencrypt_name = var.res_kvencrypt_name
  res_key_vault_id   = module.key_vault.res_out_kv_id
  res_key_opts       = var.res_key_opts
  depends_on         = [ module.key_vault_policy ]
}

module "storage_encryption_scope" {
  source = "git::https://HPE-MVC@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_encryption_scope"
  res_ses_name                  = var.res_ses_name
  res_storage_account_id        = module.storage_account.res_out_sa_id
}
