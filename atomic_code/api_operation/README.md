# Resource

- [API operation within an API Management Service](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/api_management_api_operation)

---

# Resource inputs and arguments to modules
These are the inputs within this resource
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_api_operation | API operation paramters - operation_id, display_name, method, url_template and description | list | Yes |
| res_api_name | Name of the API within the API Management Service | string | Yes |
| res_apim_name | Name of the API Management Service | string | Yes |
| res_rg_name | Name of the Resource Group | string | Yes|
---
# Outputs
| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_apioperation_id | ID of the API Management API Operation | string | No |

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of API operation within an API Management Service |
| API Management Service | An API Management Service needs to be created prior to creation of API operation | 
| API within an API Management Service | An API needs to be created prior to creation of API operation |
---
# Sample Usage
#### Terraform Module
```js
module "api_operation" {
    source      = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//api_operation"
    res_api_operation = [
    {
    operationid = "testspeaker"
    displayname = "get speaker"
    method      = "GET"
    urltemplate = "/speaker/9"
    description = "Testing"
    },
    {
    operationid = "testsession"
    displayname = "get session"
    method      = "GET"
    urltemplate = "/session/100"
    description = "Test"
    }
    ]
    res_api_name  = "Conferencedemo"
    res_apim_name = "MVCproject"
    res_rg_name   = "MVCrg"
}
```