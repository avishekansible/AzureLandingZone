# Resource

- [Key Vault encrypt](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/key_vault_key)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_kvencrypt_name |  Name of the keyvault key | string | Yes |
| res_key_opts | A list of JSON web key operations | list | Yes |
| res_key_vault_id | ID of the existing key vault for which encryption to be added | String | Yes |
---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_kv_key_version | Version of the keyvault key | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | Resource Group to be created prior creating key vault |
| Key Vault | Key Vault should already be present in order to encrypt it | 

---

# Sample Usage
#### Terraform Module
```js

module "key_vault_encrypt" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault_encrypt"
    res_kvencrypt_name = "generated-certificates"
    res_key_opts = [ "decrypt","encrypt", "sign", "unwrapKey", "verify", "wrapKey" ]
    res_key_vault_id = "/subscriptions/669ae55e-5e4e-408f-9edd-4e6e50c4a787/resourceGroups/Newrg/providers/Microsoft.KeyVault/vaults/keyname200"
}
```