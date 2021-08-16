output "res_out_si_id" {
  value = azurerm_shared_image.si[*].id
}

output "res_out_si_name" {
  value = azurerm_shared_image.si[*].name
}

