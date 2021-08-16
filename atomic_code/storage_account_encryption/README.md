# Resource

- [Storage Encryption Scope](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_encryption_scope)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_sae_name |  Name of the Storage Encryption Scope | string | Yes |
| res_storage_account_id | ID of the existing storage account for which encryption is to be added | String | Yes |
---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_storage_encryption_scope_id | ID of Storage Encryption Scope | string | Yes |

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | Resource Group to be created prior to creating storage account |
| Storage Account | Storage Account should already be present in order to create a scope to encrypt it | 

---

# Sample Usage
#### Terraform Module
```js

module "storage_account_encryption" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_account_encryption"
    res_storage_account_id = "/subscriptions/da2d7823-2b5c-4357-9e5e-c27bc15299e2/resourceGroups/deeptestrg/providers/Microsoft.Storage/storageAccounts/deeptestsa"
    res_sae_name = "microdeeptest"
    source       = "Microsoft.Storage"
}
```