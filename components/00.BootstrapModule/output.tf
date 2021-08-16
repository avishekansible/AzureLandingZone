
output "mod_out_rg_name" {
  value = module.resource_group.res_out_rg_name
}

output "mod_out_rg_id" {
  value = module.resource_group.res_out_rg_id
}

output "mod_out_sa_id" {
  value = module.storage_account.res_out_sa_id
}

output "mod_out_sa_name" {
  value = module.storage_account.res_out_sa_name
}

output "mod_out_blob_endpoint" {
  value = module.storage_account.res_out_blob_endpoint
}

output "mod_out_kv_id" {
  value = module.key_vault.res_out_kv_id
}

output "mod_out_kv_name" {
  value = module.key_vault.res_out_kv_name
}

output "mod_out_kv_vault_uri" {
  value = module.key_vault.res_out_kv_vault_uri
}

output "mod_out_container_name" {
  value = module.storage_container.res_out_container_name
}

output "res_out_kv_key_version" {
  value = module.key_vault_encrypt.res_out_kv_key_version
}

output "res_access_policy_key_permissions" {
  value = module.key_vault_policy.res_access_policy_key_permissions
}

output "res_out_storage_encryption_scope_id" {
  value = module.storage_encryption_scope.res_out_storage_encryption_scope_id
}
