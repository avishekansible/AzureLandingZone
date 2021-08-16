# Resource

- [api_management_backend](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/api_management_backend)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_api_name | Name of the API Management| string | Yes |
| res_api_backend_name | Name of the API Management backend to be created | string | Yes |
| res_rg_name | Name of the Resource group in which APIM backend needs to be created | string | Yes |
| res_protocol | Name of the protocol | string | Yes |
| res_url | link of e url| string | Yes |
---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_apim_backend_id | ID of the API Management backend | string | No |
---

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | Resource Group to be created prior creating APIM backend |
| APIM | APIM to be created prior creating APIM backend |

# Sample Usage
#### Terraform Module
```js

module "api_management_backend" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//APIM_backend"
    res_protocol            = "http"
    res_url                 = "https://backend"
    res_name = "backendapim"
    res_resource_group_name = "Newrg"
    res_api_management_name = "example-apimanagement"
    validate_certificate_chain = "false"
    validate_certificate_name = "false"
}
```