output "res_out_ilb_id" {
  value = azurerm_lb.ilb.id
}

output "res_out_ilb_name" {
  value = azurerm_lb.ilb.name
}

output "res_out_ilb_ip_address" {
  value = azurerm_lb.ilb.private_ip_address
}

output "res_out_be_id" {
  value = azurerm_lb_backend_address_pool.be-ap.id
}