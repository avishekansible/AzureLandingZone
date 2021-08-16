resource "azurerm_lb" "ilb" {
  name                = var.res_ilb_name
  location            = var.res_location
  sku                 = var.res_ilb_sku
  resource_group_name = var.res_ilb_rg_name
  tags                = var.res_tags

  frontend_ip_configuration {
    name                          = var.res_ilb_ip_config_name
    subnet_id                     = var.res_ilb_subnet_id
    private_ip_address            = var.res_ilb_ip_allocation == "Static" ? var.res_ilb_ip_address : null
    private_ip_address_allocation = var.res_ilb_ip_allocation
  }
}

# Resource: Backend Address Pool
resource "azurerm_lb_backend_address_pool" "be-ap" {
  name                = var.res_ilb_be_name
  resource_group_name = azurerm_lb.ilb.resource_group_name
  loadbalancer_id     = azurerm_lb.ilb.id
}

# Resource:Load Balancer Probe
resource "azurerm_lb_probe" "probe" {
  name                = "Probe"
  resource_group_name = azurerm_lb.ilb.resource_group_name
  loadbalancer_id     = azurerm_lb.ilb.id
  port                = var.res_ilb_probe_port
}

# Resource: Load Balancer Rule
resource "azurerm_lb_rule" "rule" {
  count                          = length(var.res_ilb_rules_info)
  name                           = (var.res_ilb_rules_info[count.index]).0
  resource_group_name            = azurerm_lb.ilb.resource_group_name
  loadbalancer_id                = azurerm_lb.ilb.id
  protocol                       = (var.res_ilb_rules_info[count.index]).1
  frontend_port                  = (var.res_ilb_rules_info[count.index]).2
  backend_port                   = (var.res_ilb_rules_info[count.index]).3
  frontend_ip_configuration_name = var.res_ilb_ip_config_name
  backend_address_pool_id        = azurerm_lb_backend_address_pool.be-ap.id
  probe_id                       = azurerm_lb_probe.probe.id
  depends_on                     = [azurerm_lb.ilb, azurerm_lb_probe.probe]
}