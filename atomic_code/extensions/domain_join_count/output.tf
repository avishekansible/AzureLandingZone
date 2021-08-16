output "res_out_domain_join_extesion_ids" {
  value = azurerm_virtual_machine_extension.join-domain[*].id
}