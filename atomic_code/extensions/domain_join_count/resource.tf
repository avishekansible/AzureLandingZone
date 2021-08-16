resource "azurerm_virtual_machine_extension" "join-domain" {
  count                = length(var.res_vm_names)
  name                 = "join-domain"
  location             = var.res_location
  resource_group_name  = var.res_rg_name
  virtual_machine_name = element(var.res_vm_names, count.index)
  publisher            = "Microsoft.Compute"
  type                 = "JsonADDomainExtension"
  type_handler_version = "1.3"
  # NOTE: the `OUPath` field is set to blank as default, to put it in the Computers OU
  settings = <<SETTINGS
        {
            "Name": "${var.res_active_directory_domain}",
            "OUPath": "${var.res_active_directory_OUPath}",
            "User": "${var.res_active_directory_domain}\\${var.res_active_directory_username}",
            "Restart": "true",
            "Options": "3"
        }
    SETTINGS

  protected_settings = <<SETTINGS
        {
            "Password": "${var.res_active_directory_password}"
        }
    SETTINGS
}