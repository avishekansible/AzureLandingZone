resource "azurerm_subnet_route_table_association" "rt_asc" {
  count          = length(var.res_rt_asc_subnet_id)
  subnet_id      = var.res_rt_asc_subnet_id[count.index]
  route_table_id = var.res_rt_asc_rt_id
}