resource "azurerm_application_insights" "apim_appinsights" {
   count               = length(var.res_apim_applicationinsight)
  name                = var.res_apim_applicationinsight[count.index].name
  location            = var.res_location
  resource_group_name = var.res_rg_name
  application_type    = var.res_apim_applicationinsight[count.index].application_type
}