# Resource

- [APIM Named Value](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/api_management_named_value)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_rg_name | The name of the Resource Group in which the API Management Named Value should exist | string | Yes |
| res_api_management_name | The name of the API Management Service in which the API Management Named Value should exist | string | Yes |
| res_apim_nv_info | List of objects where each element contains three parameters - name, display_name and value | list | Yes |


---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_assignment_id | The ID of the API Management Named Value | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|
|Resource Group | Resource Group should be created before creating APIM |
|APIM |APIM should be created before named value |
---

# Sample Usage
#### Terraform Module
```js

module "apim-namedvalue" {
  source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//apim_namedvalue"
  res_rg_name             = "rg-apim"
  res_api_management_name = "rg-apim-test"
  res_apim_nv_info = [
    {
        name = "demo"
        display_name = "demo"
        value = "demo"
    },
    {
        name = "test"
        display_name = "test"
        value = "test"
    }
    ]
}
```