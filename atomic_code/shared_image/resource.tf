
resource "azurerm_shared_image" "si" {
  name                = var.res_si_name
  gallery_name        = var.res_sig_name
  resource_group_name = var.res_si_rg_name
  location            = var.res_location
  os_type             = var.res_si_os_type
  tags                = var.res_tags

  identifier {
    publisher = var.res_si_publisher
    offer     = var.res_si_offer
    sku       = var.res_si_sku
  }
}

resource "azurerm_shared_image_version" "siver" {
  name                = var.res_si_ver_name
  gallery_name        = var.res_sig_name
  image_name          = azurerm_shared_image.si.name
  resource_group_name = var.res_si_rg_name
  location            = var.res_location
  managed_image_id    = var.res_image_id

  dynamic target_region {
    for_each = var.res_regions
    content {
      name                   = target_region.value
      regional_replica_count = "2"
    }
  }
}