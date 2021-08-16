resource "azurerm_backup_policy_vm" "policy" {
  name                = var.res_bkup_vault_policy_name
  resource_group_name = var.res_bkup_vault_rg_name
  recovery_vault_name = var.res_bkup_vault_name

  timezone = "UTC"

  backup {
    frequency = "Daily"
    time      = "11:00"
  }

  retention_daily {
    count = 7
  }

  retention_weekly {
    count    = 4
    weekdays = ["Sunday"]
  }

  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["Last"]
  }
}