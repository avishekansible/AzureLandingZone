# Resource

- [API policy within an API Management Service](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/api_management_api_policy)

---

# Resource inputs and arguments to modules
These are the inputs within this resource
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_apim_name | Name of the API Management Service | string | Yes |
| res_rg_name | Name of the Resource Group | string | Yes|
| api_name_policy_mapping        | Specifies the apim api names and policies to be created  |  list (object({apiName = string, policyFile = string  }))   | Yes |
---
# Outputs
| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_apim_api_policy_id | ID of the API Management API Policy | string | No |

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of API policy for API within an API Management Service |
| API Management Service | An API Management Service needs to be created prior to creation of API policy | 
| API within an API Management Service | An API needs to be created prior to creation of API policy |
---
# Sample Usage
#### Terraform Module
```js
module "api_policy" {
    source      = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//apim_api_policy"
    res_rg_name = "rg-apim"
    res_apim_name = "rg-apim-test"
    api_name_policy_mapping = [
    {
        apiName = "echo-api"
        policyFile="policy.xml"
    },
    {
        apiName = "test-api"
        policyFile="policy1.xml"
    }
  ]
}
```