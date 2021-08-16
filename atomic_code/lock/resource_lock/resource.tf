resource "azurerm_management_lock" "lock" {
  count      = length(var.res_resources_ids)
  name       = var.res_lock_name
  scope      = var.res_resources_ids[count.index]
  lock_level = "ReadOnly"
}
