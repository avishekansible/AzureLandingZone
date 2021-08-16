resource "azurerm_app_service_environment" "ase" {
    name                            = var.res_ase_name
    subnet_id                       = var.res_ase_subnet_id
    pricing_tier                    = var.res_ase_pricing_tier
    front_end_scale_factor          = var.res_ase_fe_scale
    resource_group_name             = var.res_rg_name
    internal_load_balancing_mode    = var.res_ilb_mode
}