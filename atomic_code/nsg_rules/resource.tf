// resource "azurerm_network_security_rule" "nsg_rules" {
//   count                       = length(var.res_nsg_rules)
//   name                        = split(",", var.res_nsg_rules[count.index]).1
//   resource_group_name         = var.res_vnet_rg_name
//   network_security_group_name = join("-", [split(",", var.res_subnets_info[count.index]).0, "nsg"])
//   protocol                    = split(",", var.res_nsg_rules[count.index]).2
//   source_port_range           = split(",", var.res_nsg_rules[count.index]).3
//   destination_port_range      = split(",", var.res_nsg_rules[count.index]).4
//   source_address_prefix       = split(",", var.res_nsg_rules[count.index]).5
//   destination_address_prefix  = split(",", var.res_nsg_rules[count.index]).6
//   direction                   = split(",", var.res_nsg_rules[count.index]).7
//   priority                    = split(",", var.res_nsg_rules[count.index]).0
//   access                      = split(",", var.res_nsg_rules[count.index]).8
// }

resource "azurerm_network_security_rule" "nsg_rules" {
  count                       = length(var.res_nsg_rules)
  name                        = split(",", var.res_nsg_rules).1
  resource_group_name         = var.res_vnet_rg_name
  network_security_group_name = var.network_info
  protocol                    = split(",", var.res_nsg_rules).2
  source_port_range           = split(",", var.res_nsg_rules).3
  destination_port_range      = split(",", var.res_nsg_rules).4
  source_address_prefix       = split(",", var.res_nsg_rules).5
  destination_address_prefix  = split(",", var.res_nsg_rules).6
  direction                   = split(",", var.res_nsg_rules).7
  priority                    = split(",", var.res_nsg_rules).0
  access                      = split(",", var.res_nsg_rules).8
}