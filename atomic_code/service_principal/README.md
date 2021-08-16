# Resource

- [azuread_application] (https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application)
- [azuread_service_principal] (https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal)
- [random_password] (https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password)
- [azuread_application_password] (https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| :--------- |:---------| :----------|:---------:|
| service_principal_name |  The name of the service principal | String | No |
| end_date_relative |  End date relative of the Password Created | String | Yes |
---

# Outputs

| Output | Description | Type | Sensitive |
| :--------- |:---------| :----------|:---------:|
| service_principal_name | The object id of service principal | string | Yes |
| service_principal_object_id | The object id of service principal |sString | Yes |
| service_principal_application_id | The object id of service principal | string | Yes |
| client_id | The application id of AzureAD application created | string | Yes |
| app_password | The random password generated | string | Yes |

---

# Sample Usage
#### Terraform Module
```js

module "service_principal" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//service_principal"
    display_name = var.service_principal_name
    web {
        implicit_grant {
            access_token_issuance_enabled = true 
        }
    }
    application_id = azuread_application.app.application_id
    app_role_assignment_required = false
    application_object_id = azuread_application.app.object_id
    value = random_password.rp.app_password
    end_date_relative = var.end_date_relative
}

    
```