# Resource

- [Route Table](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/route_table)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_rt_name | Name whihc should be used for this Route table | string | yes |
| res_vnet_rg_name | Name which should be used for this Resource Group | string | Yes |
| res_location | Azure Region where the Resource Group will be created | string | Yes |
| res_tags | Resource Group Tags | map | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_rt_id | ID of the rout table id | string | No |
| res_out_rt_name | Name of the rout table name | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|

---

# Sample Usage
#### Terraform Module
```js

module "route_table" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//route_table"
    res_rt_name = "text-mvc-rt"
    res_vnet_rg_name  = "test-mvc"
    res_location = "eastus2"
    res_tags     = {Environment = "test"}
}
```
