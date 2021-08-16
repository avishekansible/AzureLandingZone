output "res_out_role_id" {
    value = azurerm_role_assignment.role_assignment.*.id
}