# Resource
- [ Virtual Network ](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/virtual_network)

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument            | Description                                                         | Type      | Required |
| --------------------| --------------------------------------------------------------------| ----------|----------|
| name                | The name of the Virtual Network                                     | string    | Yes |
| resource_group_name | Specifies resource group in which to create the virtual network     | string    | Yes |
| location            | Specifies location/region where the virtual network is created      | string    | Yes |
| address_space       | Specifies address space that uses the virtual network               | list      | Yes |
| dns_servers         | List of IP addresses of DNS servers                                 | list      | Yes |
| tags                | A mapping of tags to assign to the resource.                        | map       | Yes |

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| name   | The name of the virtual network  | string    | No |
| id   | The virtual NetworkConfiguration ID  | string    | No |

# Dependencies
| Argument | Description
| --------- |:---------|
| Resource Group | Resource Group to be created prior creating virtual network  |

# Sample Usage
#### Terraform Module
```js

module "vnet" {
  source                    = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//vnet"
  res_vnet_name             = "vnet1"
  res_location              = "East US"
  res_vnet_rg_name          = "rg_test"
  res_vnet_address_prefix   = ["10.0.0.0/16"]
  res_vnet_dns_servers      = ["10.0.0.4", "10.0.0.5"]
  res_tags                  = {
    vnet = "test"
  }
}