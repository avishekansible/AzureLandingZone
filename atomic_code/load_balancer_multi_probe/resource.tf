resource "azurerm_lb" "ilb" {
  name                = var.res_ilb_name
  location            = var.res_location
  sku                 = var.res_ilb_sku
  resource_group_name = var.res_ilb_rg_name
  tags                = var.res_tags

  frontend_ip_configuration {
    name                          = var.res_ilb_ip_config_name
    subnet_id                     = var.res_ilb_subnet_id
    private_ip_address            = var.res_ilb_ip_address
    private_ip_address_allocation = var.res_ilb_ip_allocation
    public_ip_address_id          = var.res_ilb_public_ip_address_id
  }
}

# Resource: Backend Address Pool
resource "azurerm_lb_backend_address_pool" "be-ap" {
  name                = var.res_ilb_be_name
  resource_group_name = azurerm_lb.ilb.resource_group_name
  loadbalancer_id     = azurerm_lb.ilb.id
}

# Resource:Load Balancer Probes
resource "azurerm_lb_probe" "probe" {
  for_each            = var.res_ilb_probe_config
  name                = each.key
  resource_group_name = azurerm_lb.ilb.resource_group_name
  loadbalancer_id     = azurerm_lb.ilb.id
  protocol            = each.value.protocol
  port                = each.value.port
  request_path        = each.value.request_path
  interval_in_seconds = each.value.interval_in_seconds
  number_of_probes    = each.value.number_of_probes
}

# Resource: Load Balancer Rule
resource "azurerm_lb_rule" "rule" {
  depends_on                     = [azurerm_lb.ilb, azurerm_lb_probe.probe]
  for_each                       = var.res_ilb_rule_config
  name                           = each.key
  resource_group_name            = azurerm_lb.ilb.resource_group_name
  loadbalancer_id                = azurerm_lb.ilb.id
  frontend_ip_configuration_name = var.res_ilb_ip_config_name
  protocol                       = each.value.protocol
  frontend_port                  = each.value.frontend_port
  backend_port                   = each.value.backend_port
  backend_address_pool_id        = azurerm_lb_backend_address_pool.be-ap.id
  probe_id                       = azurerm_lb_probe.probe[each.value.probe_name].id
  enable_floating_ip             = each.value.enable_floating_ip
}
