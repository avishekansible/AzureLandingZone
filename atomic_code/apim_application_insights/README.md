# Resource

- [Application Insights](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights)

---

# Resource inputs and arguments to modules
These are the inputs within this resource
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_apim_applicationinsight | API app insights paramters - name, application_type | list | Yes |
| res_location | location of the Application Insights | string | Yes |
| res_rg_name | Name of the Resource Group | string | Yes|
---
# Outputs
| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_appinsights_app_id | App ID of the Application Insight | string | No |
| res_out_appinsights_id | ID of the Applicaion Insight | string | No |
| res_out_appinsights_instrumentation_key | Instrumentation key for the Application Insights | string | No |

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of Application Insights |
---
# Sample Usage
#### Terraform Module
```js
module "apim_application_insights" {
    source      = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//apim_application_insights"
    res_location = "eastus"
    res_rg_name = "rg-apim-application_insights"
    res_apim_applicationinsight = [
    {
        name = "appinsights1",
        application_type="web"
    },
    {
        name = "appnsights2",
        application_type="other"
    }
]
```