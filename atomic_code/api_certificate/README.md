# Resource

- [Manage certificate within an API Management Service](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_certificate)

---

# Resource inputs and arguments to modules
These are the inputs within this resource
| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_apim_name | Name of the API Management Service | string | Yes |
| res_rg_name | Name of the Resource Group | string | Yes|
| res_api_cert_name | Name of the certificate within the API Management Service | string | Yes |
| res_api_cert_file | Path and name of the certificate file | string | Yes |
---
# Outputs
| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_apicertificate_id | The ID of the API Management Certificate | string | Yes |
| res_out_apicertificate_expiration | The Expiration Date of Certificate, formatted as an RFC3339 string | string | No |
| res_out_apicertificate_thumbprint | Thumbprint of the API certificate | string | Yes |
# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to uploading the API certificate to API Management Service |
| API Management Service | An API Management Service needs to be created prior to uploading the certificate | 
| Certificate File | A certificate needs to be created/available prior to uploading it |
---
# Sample Usage
#### Terraform Module
```js
module "api_certificate" {
    source      = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//api_certificate"
    res_api_cert_name 	= "example_cert"
    res_apim_name		= "api_name"
    res_rg_name			= "rg1"
    res_api_cert_file	= "c:/path/to/cert/file"
}
```