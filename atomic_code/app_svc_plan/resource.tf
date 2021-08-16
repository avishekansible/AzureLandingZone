resource "azurerm_app_service_plan" "app" {
    name                        = var.res_asp_name
    location                    = var.res_location
    resource_group_name         = var.res_rg_name
    kind                        = var.res_asp_kind
    reserved                    = var.res_asp_reserved
    app_service_environment_id  = var.res_asp_ase_id
    tags                        = var.res_tags

    sku {
        tier        = var.res_asp_tier
        size        = var.res_asp_size
        capacity    = var.res_asp_capacity
    }

    timeouts {
        create  = "3h"
        update  = "2h"
        delete  = "1h"
    }
}