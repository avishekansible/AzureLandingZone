
resource "azurerm_role_assignment" "role_assignment" {
  count = length(var.res_role_info)
  scope                = var.res_scope
  role_definition_name = var.res_role_info[count.index].role_definition_type == "name" ? var.res_role_info[count.index].role_definition : null
  role_definition_id   = var.res_role_info[count.index].role_definition_type == "id" ? var.res_role_info[count.index].role_definition : null
  principal_id         = var.res_role_info[count.index].principal_id
}