resource "azurerm_virtual_machine_extension" "sqlvmagent" {
  name                 = "SqlIaasExtension"
  location             = var.res_location
  resource_group_name  = var.res_rg_name
  virtual_machine_name = var.res_vm_name
  publisher            = "Microsoft.SqlServer.Management"
  type                 = "SqlIaaSAgent"
  type_handler_version = "2.0"
  depends_on           = [var.res_depends_on]

  settings = <<SETTINGS
  {
    "sqlServerLicenseType": "${var.res_sql_ServerLicenseType}",
    "AutoTelemetrySettings": {
      "Region": "${var.res_location}"
    },
    "AutoPatchingSettings": {
      "PatchCategory": "WindowsMandatoryUpdates",
      "Enable": false,
      "DayOfWeek": "${var.res_sql_AutopatchingDayOfWeek}",
      "MaintenanceWindowStartingHour": "${var.res_sql_AutopatchingStartHour}",
      "MaintenanceWindowDuration": "${var.res_sql_AutopatchingWindowDuration}"
    },
    "KeyVaultCredentialSettings": {
      "Enable": false,
      "CredentialName": ""
    },
    "ServerConfigurationsManagementSettings": {
      "SQLConnectivityUpdateSettings": {
          "ConnectivityType": "Private",
          "Port": "1433"
      },
      "SQLWorkloadTypeUpdateSettings": {
          "SQLWorkloadType": "GENERAL"
      },
      "AdditionalFeaturesServerConfigurations": {
          "IsRServicesEnabled": "false"
      }
    }
  }
SETTINGS

  tags = var.res_tags
}