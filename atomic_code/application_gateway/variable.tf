variable "res_appgw_config" {
  description = "Application gateway global settings"
  type = object({
    name         = string
    rg_name      = string
    location     = string
    tags         = map(string)
    enable_http2 = bool
  })
}

variable "res_appgw_sku" {
  description = "Application gateway SKU"
  type = object({
    name     = string
    tier     = string
    capacity = number
  })
}

variable "res_appgw_authentication_certificates" {
  description = "Application gateway backend authentication certificates"
  type = list(object({
    name = string
    data = string
  }))
}

variable "res_appgw_backend_address_pools" {
  description = "Application gateway backend address pools"
  type = list(object({
    name         = string
    ip_addresses = list(string)
  }))
}

variable "res_appgw_backend_http_settings" {
  description = "Application gateway backend HTTP settings"
  type = list(object({
    name                            = string
    cookie_based_affinity           = string
    affinity_cookie_name            = string
    port                            = string
    probe_name                      = string
    protocol                        = string
    request_timeout                 = number
    host_name                       = string
    authentication_certificate_name = string
  }))
}

variable "res_appgw_frontend_ip_configurations" {
  description = "Application gateway frontend IP configurations"
  type = list(object({
    name                          = string
    subnet_id                     = string
    private_ip_address            = string
    private_ip_address_allocation = string
    public_ip_address_id          = string
  }))
}

variable "res_appgw_frontend_ports" {
  description = "Application gateway frontend ports"
  type = list(object({
    name = string
    port = number
  }))
}

variable "res_appgw_gateway_ip_configurations" {
  description = "Application gateway IP configurations"
  type = list(object({
    name      = string
    subnet_id = string
  }))
}

variable "res_appgw_http_listeners" {
  description = "Application gateway HTTP(S) listeners"
  type = list(object({
    name                           = string
    frontend_ip_configuration_name = string
    frontend_port_name             = string
    ssl_certificate_name           = string
    protocol                       = string
  }))
}

variable "res_appgw_probes" {
  description = "Application gateway health probes"
  type = list(object({
    name                = string
    host                = string
    interval            = number
    protocol            = string
    path                = string
    timeout             = number
    unhealthy_threshold = number
    match_status_code   = list(string)
    match_body          = string
  }))
}

variable "res_appgw_redirect_configurations" {
  description = "Application gateway redirect configurations"
  type = list(object({
    name                 = string
    redirect_type        = string
    target_listener_name = string
    target_url           = string
    include_path         = bool
    include_query_string = bool
  }))
}

variable "res_appgw_redirect_rules" {
  description = "Application gateway redirect rules"
  type = list(object({
    name                        = string
    rule_type                   = string
    http_listener_name          = string
    redirect_configuration_name = string
  }))
}

variable "res_appgw_routing_rules" {
  description = "Application gateway routing rules"
  type = list(object({
    name                       = string
    rule_type                  = string
    http_listener_name         = string
    backend_address_pool_name  = string
    backend_http_settings_name = string
  }))
}

variable "res_appgw_ssl_certificates" {
  description = "Application gateway SSL certificates"
  type = list(object({
    name     = string
    data     = string
    password = string
  }))
}

variable "res_appgw_ssl_policy" {
  description = "Application gateway SSL policy"
  type = object({
    disabled_protocols = list(string)
    policy_name        = string
    policy_type        = string
  })
}
