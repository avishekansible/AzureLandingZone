
resource "azurerm_recovery_services_protected_vm" "bkup" {
  count               = length(var.res_vm_ids)
  resource_group_name = var.res_vault_rg_name
  recovery_vault_name = var.res_bkup_vault_name
  source_vm_id        = (var.res_vm_ids[count.index]).0
  backup_policy_id    = var.res_bkup_vault_policy_id
}

