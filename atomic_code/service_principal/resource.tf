resource "azuread_application" "app" {
  display_name               = var.service_principal_name
  sign_in_audience           = "AzureADMultipleOrgs"
  web {
      implicit_grant {
        access_token_issuance_enabled = true 
      }
  }
}

resource "azuread_service_principal" "sp" {
  application_id = azuread_application.app.application_id
  app_role_assignment_required = false
}

resource "random_password" "rp" {
  length      = 8
  min_upper   = 1
  min_lower   = 4
  min_numeric = 3
}

resource "azuread_application_password" "application_password" {
  application_object_id = azuread_application.app.object_id
  value = random_password.rp.result
  end_date_relative = var.end_date_relative
}
