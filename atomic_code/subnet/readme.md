# Resource

- [Subnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/subnet)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_subnets_info | Subnet name and Address prefix list | list | Yes |
| res_vnet_rg_name | vNet Resource Group Name | string | Yes |
| res_vnet_name | vNet Name | string | Yes |
| res_serv_endp | Service Endpoint | list | Yes |
---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_subnets_names | Subnet Names | string | No |
| res_out_subnets_ids | Subnet IDs | string | No |
| res_out_subnets_info | Subnet Name and Corresponding IDs | list | No |
| res_out_subnets_address_ranges | Subnet Name and Corresponding Address prefix | list | No |
| res_out_serv_endp | Subnet Endpoints | string | No |
---

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of Subnet |
| Virtual Network | A virtual network needs to be created prior to creation of Subnet |
---

# Sample Usage
#### Terraform Module
```js

module "subnet" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//subnet"
    res_subnets_info = [["subnet","10.0.2.0/24"], ["subnet1","10.0.3.0/24"], ["subnet3","10.0.9.0/24"]]
    res_vnet_rg_name = "test"
    res_vnet_name = "testvn"
    res_serv_endp = ["Microsoft.Storage", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.ServiceBus"]
}
```