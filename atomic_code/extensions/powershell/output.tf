output "res_out_domain_ps_extesion_id" {
  value = azurerm_virtual_machine_extension.powershell[*].id
}
