resource "azurerm_app_service" "svc" {
    name                        = var.res_app_svc_name
    location                    = var.res_location
    resource_group_name         = var.res_rg_name
    app_service_plan_id         = var.res_app_svc_plan_id
    htts_only                   = var.https_only

    site_config {
        always_on               = var.always_on
        java_version            = var.res_app_svc_java_version
        java_container          = var.res_app_svc_java_container
        java_container_version  = var.res_app_svc_java_container_version
    }
}