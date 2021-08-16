# Resource

- [Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/key_vault)

---

# Resource inputs and arguments to module
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_kv_name | Name which should be used for this key vault | string | Yes |
| res_location | Azure Region where the key vault will be created | string | Yes |
| res_rg_name | Name of the Resource group under which key vault should be created | string | Yes |
| res_disk_encryption | Whether disk encryption required or not | Boolean | Yes |
| res_tags | Key vault Tags | map | Yes |
| res_tenant_id | Tenant ID | String | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_kv_id | ID of the Key Vault | string | No |
| res_out_kv_name | Name of the key vault | string | No |
| res_out_kv_vault_uri | Uri of the Key vault | string | No |


# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | Resource Group to be created prior creating key vault |

---

# Sample Usage
#### Terraform Module
```js

module "key_vault" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//key_vault"
    res_kv_name = "keyname200"
    res_location = "southindia"
    res_rg_name = "Newrg"
    res_disk_encryption = "true"
    res_tags = { "dept" = "cloud" }
    res_tenant_id = "105b2061-b669-4b31-92ac-24d304d195dc"
}
```