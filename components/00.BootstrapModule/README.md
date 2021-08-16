---
# Introduction 
This Module creates a Resource group, Storage Account, Storage Container, Key Vault, Key Vault Access Policy, Key Vault Key and Storage Encryption Scope on Azure.

---
# Dependent Resources
- [Resource Group](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/resource_group)
- [Storage Account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account)
- [Storage Container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container)
- [Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault)
- [Key Vault Access Policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy)
- [Key Vault Key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key)
- [Storage Encryption Scope ](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_encryption_scope)

---
# Module inputs and arguments to resources
These are the inputs within this module
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| rg_name | Resource Group Name | String | Yes |
| location | Name of Azure region location for the Resource group | String | Yes |
| tags | Resource Group Tags | Map | Yes|
| sa_name | Storage Account Name | String | Yes|
| account_replication_type | Replication type of the Storage Account. Valid values are "LRS", "GRS", "RAGRS", "ZRS", GZRS", "RAGZRS"  | String | Yes |
| account_tier | Account Tier of the Storage Account. Valid values are "standard" and "premium" | String | Yes |
| account_type | Account type of the Storage Account. Valid values are "storage", "filestorage", "blobstorage", "blockblobstorage", storagev2" | String | Yes |
| kv_name | Key Vault Name | String | Yes |
| disk_encryption | Disc Encryption required or not. Possible Values are: "true" or "false" | String | Yes |
| tenant_id | Tenant ID of the Azure Account | String | Yes |
| res_container_name | Storage Container Name | String | Yes |
| res_access_type | The Access Level configured for this Container. Valid values are "blob", "container" or "private" | String | Yes |
| res_kvencrypt_name | Key Vault Encryption Secret Name | String | Yes |
| res_key_opts | List of Key Options. Possible values include: "decrypt", "encrypt", "sign", "unwrapKey", "verify" and "wrapKey". | String | Yes |
| res_key_permissions | List of Key Permissions. Must be one or more from the following: "Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify" and "WrapKey"  | String | Yes |
| res_secret_permissions | List of Secret Permissions. Must be one or more from the following: "Backup", "Delete", "get", "list", "purge", "recover", "restore" and "set". | String | Yes |
| res_ses_name| Storage Encryption Scope Name | String | Yes |

---
# Outputs
| Output | Description | Sensitive |
| --------- |:---------| :---------:|
| mod_out_rg_name | Name of the Resource Group | No |
| mod_out_rg_id | The ID of Resource Group | No |
| mod_out_sa_id | The ID of Storage Account | No |
| mod_out_sa_name | Name of Storage Account | No |
| mod_out_blob_endpoint | Endpoint of Blob Storage Account | No |
| mod_out_kv_id | The  ID of Key Vault | No |
| mod_out_kv_name | Name of Key Vault | No |
| mod_out_kv_vault_uri | URI of Key Vault | No |
| mod_out_container_name | Name of Storage Container | No |
| res_out_kv_key_version | Verion of Key | Yes |
| res_access_policy_key_permissions | List of Key Permissions | No |
| res_out_storage_encryption_scope_id | The ID or Storage Encryption Scope | No |

---
# Sample Usage
#### Terraform Module
```js
module "resource_group" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
  res_rg_name = "mvctestrg"
  res_location = "East US"
  res_tags = "{ env : "demo" }"
}
```

```js
module "storage_account" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_account"
  res_sa_name = "mvctestsa"
  res_sa_rg_name = "mvctestrg"
  res_location = "East US"
  res_account_tier = "Standard"
  res_replication_type = "GRS"
  res_account_type = "Storage"
  res_tags = "{ env : "demo" }"
}
```

```js
module "key_vault" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault"
  res_kv_name         = "mvckeyvaulttest"
  res_location        = "East US"
  res_rg_name         = "mvctestrg"
  res_disk_encryption = "true"
  res_tenant_id       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx"
  res_tags            = "{ env : "demo" }"
}
```

```js
module "storage_container" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_container"
  res_container_name         = "mvccontainertest"
  res_sa_name                = "mvctestsa"
  res_access_type            = "private"
}
```

```js
module "key_vault_policy" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault_policy"
  res_key_vault_id       = /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx/resourceGroups/mvctestrg/providers/Microsoft.KeyVault/vaults/mvckeyvaulttest
  res_tenant_id          = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx"
  res_key_permissions    = ["get", "create", "update", "import", "list", "backup", "restore", "recover", "unwrapkey", "wrapkey", "purge", "encrypt", "decrypt", "sign", "verify", "delete"]
  res_secret_permissions = [ "get" , "set" ]
}
```

```js
module "key_vault_encrypt" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault_encrypt"
  res_kvencrypt_name = "mvckeyonetest"
  res_key_vault_id   = /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx/resourceGroups/mvctestrg/providers/Microsoft.KeyVault/vaults/mvckeyvaulttest
  res_key_opts       = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
  depends_on         = [ module.key_vault_policy ]
}
```

```js
module "storage_encryption_scope" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_encryption_scope"
  res_ses_name                  = "mvctestses"
  res_storage_account_id        = /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx/resourceGroups/mvctestrg/providers/Microsoft.Storage/storageAccounts/mvctestsa
}
```
---
# Getting Started
TO-DO: Guide users through getting your code up and running on their own system. In this section you can talk about:
1.	Install terraform and Azure CLI
2.	Use Code editor VisualStudio
3.	Latest releases
4.	API references

---
# Build and Test
terraform apply -var-file="variable.tfvars"
