output "res_out_app_svc_id" {
    value = azurerm_app_service.svc.id
}

output "res_out_app_svc_name" {
    value = azurerm_app_service.svc.name
}

output "res_out_app_svc_default_site_hostname" {
    value = azurerm_app_service.svc.default_site_hostname
}

output "res_out_app_svc_outbound_ip_addresses" {
    value = azurerm_app_service.svc.outbound_ip_addresses
}

output "res_out_app_svc_source_control_repo_url" {
    value = azurerm_app_service.svc.source_control.0.repo_url
}

output "res_out_app_svc_source_control_branch" {
    value = azurerm_app_service.svc.source_control.0.branch
}
