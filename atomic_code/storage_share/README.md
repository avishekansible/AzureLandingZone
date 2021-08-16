# Resource

- [Storage Share](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/storage_share)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_share_name | Name of the Storage Share | string | Yes |
| res_sa_name | Name of the Storage Account | string | Yes |
| res_quota | The maximum size of the share, in gigabytes | string | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_share_name | Name of the Storage Share | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | A container that holds related resources for an Azure solution |
| Storage Account | Storage Account is a Microsoft-managed service providing cloud storage |
---

# Sample Usage
#### Terraform Module
```js

module "share" {
    source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_share"
    res_share_name = "mvcstorageshare"
    res_sa_name = "mvcstorageaccount"
    res_quota = "50"
}
```