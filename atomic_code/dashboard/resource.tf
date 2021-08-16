resource "azurerm_dashboard" "my_dashboard" {
  name                = var.res_dashboard_name
  resource_group_name = var.res_rg_name
  location            = var.res_location
  tags = {
    source = "terraform"
  }
  dashboard_properties = templatefile("dashboard.tpl",
    {
      md_content = var.res_md_content,
      video_link = var.res_video_link,
      sub_id     = data.azurerm_subscription.current.subscription_id
  })
}
