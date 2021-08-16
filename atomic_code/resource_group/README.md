# Resource

- [Resource Group](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/resource_group)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_rg_name | Name which should be used for this Resource Group | string | Yes |
| res_location | Azure Region where the Resource Group will be created | string | Yes |
| res_tags | Resource Group Tags | map | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_rg_name | Name of the Resource Group | string | No |
| res_out_rg_id | The ID of the Resource Group | string | No |

# Dependencies

| Name | Description
| --------- |:---------|
| NA | NA |

---

# Sample Usage
#### Terraform Module
```js

module "resource_group" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//resource_group"
    res_rg_name  = "mvc-rg"
    res_location = "eastus2"
    res_tags     = {Environment = "dev"}
}
```