resource "azurerm_application_gateway" "appgw" {
  name                = var.res_appgw_config.name
  resource_group_name = var.res_appgw_config.rg_name
  location            = var.res_appgw_config.location
  tags                = var.res_appgw_config.tags
  enable_http2        = var.res_appgw_config.enable_http2

  sku {
    name     = var.res_appgw_sku.name
    tier     = var.res_appgw_sku.tier
    capacity = var.res_appgw_sku.capacity
  }

  dynamic "authentication_certificate" {
    for_each = var.res_appgw_authentication_certificates
    content {
      name = authentication_certificate.value.name
      data = authentication_certificate.value.data
    }
  }

  dynamic "backend_address_pool" {
    for_each = var.res_appgw_backend_address_pools
    content {
      name         = backend_address_pool.value.name
      ip_addresses = backend_address_pool.value.ip_addresses
    }
  }

  dynamic "backend_http_settings" {
    for_each = var.res_appgw_backend_http_settings
    content {
      name                  = backend_http_settings.value.name
      cookie_based_affinity = backend_http_settings.value.cookie_based_affinity
      affinity_cookie_name  = backend_http_settings.value.affinity_cookie_name
      port                  = backend_http_settings.value.port
      probe_name            = backend_http_settings.value.probe_name
      protocol              = backend_http_settings.value.protocol
      request_timeout       = backend_http_settings.value.request_timeout
      host_name             = backend_http_settings.value.host_name
      authentication_certificate {
        name = backend_http_settings.value.authentication_certificate_name
      }
    }
  }

  dynamic "frontend_ip_configuration" {
    for_each = var.res_appgw_frontend_ip_configurations
    content {
      name                          = frontend_ip_configuration.value.name
      subnet_id                     = frontend_ip_configuration.value.subnet_id
      private_ip_address            = frontend_ip_configuration.value.private_ip_address
      private_ip_address_allocation = frontend_ip_configuration.value.private_ip_address_allocation
      public_ip_address_id          = frontend_ip_configuration.value.public_ip_address_id
    }
  }

  dynamic "frontend_port" {
    for_each = var.res_appgw_frontend_ports
    content {
      name = frontend_port.value.name
      port = frontend_port.value.port
    }
  }

  dynamic "gateway_ip_configuration" {
    for_each = var.res_appgw_gateway_ip_configurations
    content {
      name      = gateway_ip_configuration.value.name
      subnet_id = gateway_ip_configuration.value.subnet_id
    }
  }

  dynamic "http_listener" {
    for_each = var.res_appgw_http_listeners
    content {
      name                           = http_listener.value.name
      frontend_ip_configuration_name = http_listener.value.frontend_ip_configuration_name
      frontend_port_name             = http_listener.value.frontend_port_name
      ssl_certificate_name           = http_listener.value.ssl_certificate_name
      protocol                       = http_listener.value.protocol
    }
  }

  dynamic "probe" {
    for_each = var.res_appgw_probes
    content {
      name                = probe.value.name
      host                = probe.value.host
      interval            = probe.value.interval
      protocol            = probe.value.protocol
      path                = probe.value.path
      timeout             = probe.value.timeout
      unhealthy_threshold = probe.value.unhealthy_threshold
      match {
        status_code = probe.value.match_status_code
        body        = probe.value.match_body
      }
    }
  }

  dynamic "redirect_configuration" {
    for_each = var.res_appgw_redirect_configurations
    content {
      name                 = redirect_configuration.value.name
      redirect_type        = redirect_configuration.value.redirect_type
      target_listener_name = redirect_configuration.value.target_listener_name
      target_url           = redirect_configuration.value.target_url
      include_path         = redirect_configuration.value.include_path
      include_query_string = redirect_configuration.value.include_query_string
    }
  }

  dynamic "request_routing_rule" {
    for_each = var.res_appgw_redirect_rules
    content {
      name                        = request_routing_rule.value.name
      rule_type                   = request_routing_rule.value.rule_type
      http_listener_name          = request_routing_rule.value.http_listener_name
      redirect_configuration_name = request_routing_rule.value.redirect_configuration_name
    }
  }

  dynamic "request_routing_rule" {
    for_each = var.res_appgw_routing_rules
    content {
      name                       = request_routing_rule.value.name
      rule_type                  = request_routing_rule.value.rule_type
      http_listener_name         = request_routing_rule.value.http_listener_name
      backend_address_pool_name  = request_routing_rule.value.backend_address_pool_name
      backend_http_settings_name = request_routing_rule.value.backend_http_settings_name
    }
  }

  dynamic "ssl_certificate" {
    for_each = var.res_appgw_ssl_certificates
    content {
      name     = ssl_certificate.value.name
      data     = ssl_certificate.value.data
      password = ssl_certificate.value.password
    }
  }

  ssl_policy {
    disabled_protocols = var.res_appgw_ssl_policy.disabled_protocols
    policy_name        = var.res_appgw_ssl_policy.policy_name
    policy_type        = var.res_appgw_ssl_policy.policy_type
  }
}
