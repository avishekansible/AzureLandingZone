resource "azurerm_app_service_slot" "slot" {
    name                        = var.res_app_svc_slot_name
    app_service_name            = var.res_app_svc_name
    location                    = var.res_location
    resource_group_name         = var.res_rg_name
    app_service_plan_id         = var.res_app_svc_plan_id
    tags                        = var.res_tags

    site_config {
        java_version            = var.res_app_svc_slot_java_version
        java_container          = var.res_app_svc_slot_java_container
        java_container_version  = var.res_app_svc_slot_java_container_version
    }
}