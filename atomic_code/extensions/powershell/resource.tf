resource "azurerm_virtual_machine_extension" "powershell" {
  name                 = var.res_ps_ext_name
  resource_group_name  = var.res_rg_name
  location             = var.res_location
  virtual_machine_name = var.res_vm_name
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"
  
  settings = <<SETTINGS
        {
            "commandToExecute": "write-host ${var.res_depends_on}; ${var.res_powershell_cmd}"
        }
   SETTINGS
}