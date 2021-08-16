# Resource: EvenHub
resource "azurerm_eventhub" "eh" {
  name                = var.res_eh_name
  namespace_name      = var.res_eh_ns_name
  resource_group_name = var.res_eh_rg_name
  partition_count     = var.res_eh_patition_count
  message_retention   = var.res_eh_msg_retention
}