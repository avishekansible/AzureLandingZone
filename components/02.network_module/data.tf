data "azurerm_storage_account" "sa" {
  name                = var.sa_name
  resource_group_name = var.sa_rg_name
}

data "terraform_remote_state" "foo" {
  backend = "azurerm"
  config = {
    storage_account_name = data.azurerm_storage_account.sa.name
    container_name       = var.container_name
    key                  = "terraform.tfstate"
    access_key           = data.azurerm_storage_account.sa.primary_access_key
  }
}
