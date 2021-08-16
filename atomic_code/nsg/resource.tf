resource "azurerm_network_security_group" "nsg" {
        for_each = var.res_nsg_info
        name                = each.key
        location            = var.res_location
        resource_group_name = var.res_vnet_rg_name
        dynamic "security_rule" { 
                for_each = each.value.nsgs
                content {
                name                        = security_rule.key
                direction                   = security_rule.value.direction
                access                      = security_rule.value.access
                priority                    = security_rule.value.priority
                protocol                    = security_rule.value.protocol
                source_port_range           = security_rule.value.source_port_range
                destination_port_range      = security_rule.value.destination_port_range
                source_address_prefix       = security_rule.value.source_address_prefix
                destination_address_prefix  = security_rule.value.destination_address_prefix
                }
        }
        tags = var.res_tags
  }

