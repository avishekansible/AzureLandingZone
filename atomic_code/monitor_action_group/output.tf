# Description:  Monitor Action Group Output File

output "res_out_mag_id" {
  value = "${azurerm_monitor_action_group.mag.id}"
}