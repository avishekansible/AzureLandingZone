output "res_out_assignment_id" {
    value = azurerm_api_management_named_value.apim-nv.*.id
}
