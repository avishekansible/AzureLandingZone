# Resource

- [Role Assignment](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/role_assignment)
---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_role_info | Parameters required to create a role_assignment - role_definition_type, role_definition and principal_id | list | Yes |
| res_scope | Id the Resource group | string | Yes |
---
# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_role_id | Id of the Role Assignment | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | Resource Group should be created before creating Role Assignment |
---

# Sample Usage
#### Terraform Module
```js

module "role_assignment" {
  source        = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//role_assignment"
  res_scope     = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx/resourceGroups/mvcrg"
  res_role_info = [
    {
    role_definition_type = "id"
    role_definition = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx/providers/Microsoft.Authorization/roleDefinitions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
    principal_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
    },
    {
    role_definition_type = "name"
    role_definition = "Contributor"
    principal_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
    }
  ]
}