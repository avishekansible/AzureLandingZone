# Outputs: Availability Set
output "res_out_avset_id" {
  value = "${azurerm_availability_set.av_set.id}"
}

output "res_out_avset_name" {
  value = "${azurerm_availability_set.av_set.name}"
}
