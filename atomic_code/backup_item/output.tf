output "res_out_bkup_item_ids" {
  value = azurerm_recovery_services_protected_vm.bkup.*.id
}