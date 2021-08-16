# Resource

- [Storage Account](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/storage_account)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_sa_name | Name of the Storage Account | string | Yes |
| res_sa_rg_name | Name of the Resource Group | string | Yes |
| res_location | Azure Region where the Storage Account will be created | string | Yes |
| res_account_tier | The Tier to use for this storage account | string | Yes |
| res_account_type | Defines the Kind of Account | string | Yes |
| res_replication_type | The type of replication to use for the storage account | string | Yes |
| res_tags | Storage Account Tags | map | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_sa_id | Id of the Storage Account | string | No |
| res_out_sa_name | Name of the Storage Account | string | No |
| res_out_blob_endpoint | Blob Endpoint of the Storage Account | string | No |

# Dependencies

| Argument | Description
| --------- |:---------|
| Resource Group | A container that holds related resources for an Azure solution |
---

# Sample Usage
#### Terraform Module
```js

module "sa" {
    source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//storage_account"
    res_sa_name = "mvcstorageaccount"
    res_sa_rg_name = "mvcresourcegroup"
    res_location = "eastus2"
    res_account_tier = "Standard"
    res_account_type = "StorageV2"
    res_replication_type = "GRS"
    res_tags = {Environment = "dev"}
}
```