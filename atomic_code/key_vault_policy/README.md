# Resource

- [Key Vault Policy](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/key_vault_access_policy)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| key_permissions |  Key permissions granted for the key vault | list | Yes |
| Secret_permissions |  Secret permissions granted for the key vault | list | No |
| res_key_vault_id | ID of the existing key vault for which encryption to be added | String | Yes |
| res_tenant_id | Tenant ID | String | Yes |
| res_object_id | Object ID of the user | String | Yes |
---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_access_policy_key_permissions | list of key permissions | list | No |

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | Resource Group to be created prior creating key vault |
| Key Vault | Key Vault should already be present in order to encrypt it | 

---

# Sample Usage
#### Terraform Module
```js

module "key_vault_policy" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault_policy"
    res_object_id = "541250f8-c946-479d-90de-cd7ef01cfd59"
    res_tenant_id = "105b2061-b669-4b31-92ac-24d304d195dc"
    res_key_permissions = [ "Get" , "create" ]
    res_secret_permissions = [ "Get" , "set" ]
    res_key_vault_id = "/subscriptions/669ae55e-5e4e-408f-9edd-4e6e50c4a787/resourceGroups/Newrg/providers/Microsoft.KeyVault/vaults/keyname200"
}
```