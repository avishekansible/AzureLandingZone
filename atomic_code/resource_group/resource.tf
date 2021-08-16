# Resource: Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.res_rg_name
  location = var.res_location
  tags     = var.res_tags
}
