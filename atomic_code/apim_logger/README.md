# Resource

- [APIM Logger](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_logger)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_rg_name | The name of the Resource Group in which the API Management exist | string | Yes |
| res_api_management_name | The name of the API Management Service | string | Yes |
| res_name | The name of this Logger, which must be unique within the API Management Service | string | Yes |
| res_resource_id | The target resource id which will be linked in the API-Management portal page | string | Yes |
| res_instrumentation_key | The instrumentation key used to push data to Application Insights | string | Yes |


---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_assignment_id |  The ID of the API Management Logger | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|
|Resource Group | Resource Group should be created before creating APIM |
|APIM |APIM is mandatory for creating a logger |
|Application insights |Application insights should be created for a logger |
---

# Sample Usage
#### Terraform Module
```js

module "apim-logger" {
source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//apim_logger"
  res_rg_name             = "rg-apim"
  res_api_management_name = "rg-apim-test"
  res_resource_id = "/subscriptions/ed9ac68f-80ba-4829-aee3-a0eeb36c2187/resourcegroups/DefaultResourceGroup-WUS2/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-ed9ac68f-80ba-4829-aee3-a0eeb36c2187-WUS2"
  res_name = "example-logger3"
  res_instrumentation_key = "a19dafbf-81f7-4280-919c-63c29033e34c"
}
```