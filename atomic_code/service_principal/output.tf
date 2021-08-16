output "service_principal_name" {
  description = "The object id of service principal"
  value       = azuread_service_principal.sp.display_name
}

output "service_principal_object_id" {
  description = "The object id of service principal"
  value       = azuread_service_principal.sp.object_id
}

output "service_principal_application_id" {
  description = "The object id of service principal"
  value       = azuread_service_principal.sp.application_id
}

output "client_id" {
  description = "The application id of AzureAD application created"
  value       = azuread_application.app.application_id
}
output "application_password"{
  sensitive = true
  description = "The random password generated is"
  value       = random_password.rp.result
}
