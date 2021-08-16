resource "azurerm_virtual_machine_extension" "powershell" {
  count                = length(var.res_vm_names)  
  name                 = "${element(var.res_vm_names, count.index)}-psExtension"
  resource_group_name  = var.res_rg_name
  location             = var.res_location
  virtual_machine_name = element(var.res_vm_names, count.index)
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"

  settings = <<SETTINGS
        {
            "fileUris": [
                "${var.res_fileuris}"
            ],
            "commandToExecute": "${var.res_powershell_cmd}"
        }
    SETTINGS
}