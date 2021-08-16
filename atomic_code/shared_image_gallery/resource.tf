resource "azurerm_shared_image_gallery" "sig" {
  name                = var.res_sig_name
  resource_group_name = var.res_sig_rg_name
  location            = var.res_location
  tags                = var.res_tags
}