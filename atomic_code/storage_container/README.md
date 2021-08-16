# Resource

- [Storage Container](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/storage_container)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_container_name | Name of the Storage Container | string | Yes |
| res_rg_name | Name of the Resource Group | string | Yes |
| res_access_type | The Access Type of the Container | string | Yes |
| res_sa_name | Name of the Storage Account | string | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_container_name | Name of Container | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | A container that holds related resources for an Azure solution |
| Storage Account | Storage Account is a Microsoft-managed service providing cloud storage |
---

# Sample Usage
#### Terraform Module
```js

module "container" {
    source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_container"
    res_container_name = "mvccontainer"
    res_sa_name        = "mvcstorageaccount"
    res_rg_name        = "mvcresourcegroup"
    res_access_type    = "private"
}
```