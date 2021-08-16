# Resource

- [API Operation Policy](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/api_management_api_operation_policy)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_api_operation_policy | Parameters required for API operation Policy - operation_id and policy | list | Yes |
| res_api_name | Name of the API within the API Management Service | string | Yes |
| res_apim_name | Name of the API Management Service | string | Yes |
| res_rg_name | Name of the Resource Group | string | Yes|
---

# Outputs
| Output | Description | Sensitive |
| --------- |:---------| :---------:|
| res_out_apioperation_policy_id | ID of the API Operation policy | No |

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of API operation within an API Management Service |
| API Management Service | An API Management Service needs to be created prior to creation of API operation | 
| API within an API Management Service | An API needs to be created prior to creation of API operation |
| API Operation within an API Management Service | An API Operation needs to be created prior to creation of API operation |
---

# Sample Usage
#### Terraform Module
```js
module "api_operation_policy" {
    source        = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//api_operation_policy"
    res_api_name  = "conference-demo"
    res_apim_name = "MVCproject"
    res_rg_name   = "demo"
    res_api_operation_policy = [
    {
    operationid = "testsession"
    policy      = <<XML
<policies>
    <outbound>
        <base />
        <set-header name="x-aspnet-version" exists-action="delete" />
        <set-header name="x-powered-by" exists-action="delete" />
    </outbound>
</policies>
XML
    },
    {
    operationid = "testspeaker"
    policy      = <<XML
<policies>
    <inbound>
        <base />
        <rate-limit calls="3" renewal-period="50" />
    </inbound>
</policies>
XML
    }
    ]
    }
```