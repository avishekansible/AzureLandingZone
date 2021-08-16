output "res_out_apicertificate_id" {
  value = azurerm_api_management_certificate.api_certificate.id
}

output "res_out_apicertificate_expiration" {
  value = azurerm_api_management_certificate.api_certificate.expiration
}

output "res_out_apicertificate_thumbprint" {
  value = azurerm_api_management_certificate.api_certificate.thumbprint
}
