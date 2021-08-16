resource "azurerm_firewall_network_rule_collection" "net_rule" {
  count               = length(var.res_fw_net_rules)
  name                = (var.res_fw_net_rules[count.index]).0
  azure_firewall_name = var.res_fw_name
  resource_group_name = var.res_fw_rg_name
  priority            = (var.res_fw_net_rules[count.index]).1
  action              = (var.res_fw_net_rules[count.index]).2

  rule {
    name = (var.res_fw_net_rules[count.index]).3

    source_addresses = [
      (var.res_fw_net_rules[count.index]).4,
    ]

    destination_ports = [
      (var.res_fw_net_rules[count.index]).5,
    ]

    destination_addresses = [
      (var.res_fw_net_rules[count.index]).6,
    ]

    protocols = [
      (var.res_fw_net_rules[count.index]).7,
    ]
  }
}