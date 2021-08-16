# Resource
- [ Virtual Network ](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/network_security_group)

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument            | Description                                                         | Type      | Required |
| --------------------| --------------------------------------------------------------------| ----------|----------|
| res_vnet_rg_name    | Specifies resource group in which to create the virtual network     | string    | Yes |
| res_location        | Specifies location/region where the virtual network is created      | string    | Yes |
| res_nsg_info        | Specifies the network security group names and rules to be created  |  map (object({nsgs = map(map(string)) }))   | Yes |
| res_tags            | A mapping of tags to assign to the resource.                        | map       | Yes |

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| name   | The name of the nsgs  | string    | No |
| id     | The nsgs ID  | string    | No |

# Dependencies
| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior |

# Sample Usage
#Terraform Module
```js
module "nsg" {
      source = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//nsg
      res_location = "eastus2"
      res_vnet_rg_name = "test"
      res_tags = { environment = "Dev"}
      res_nsg_info = {
          nsg_1 = {
              nsgs = {
                  rule1 = {
                          direction                   = "Inbound"
                          access                      = "Allow"
                          priority                    = 1001
                          protocol                    = "TCP"
                          source_port_range           = "*"
                          destination_port_range      = "*"
                          source_address_prefix       = "*"
                          destination_address_prefix  = "*"
                          }
                  rule2 = {
                          direction                   = "Inbound"
                          access                      = "Allow"
                          priority                    = 1002
                          protocol                    = "TCP"
                          source_port_range           = "*"
                          destination_port_range      = "*"
                          source_address_prefix       = "*"
                          destination_address_prefix  = "*"
                          }
              }
          },
          nsg_2 = {
              nsgs = {
                   rule1 = {
                          direction                   = "Outbound"
                          access                      = "Allow"
                          priority                    = 2001
                          protocol                    = "TCP"
                          source_port_range           = "*"
                          destination_port_range      = "*"
                          source_address_prefix       = "*"
                          destination_address_prefix  = "*"
                          }
                  rule2 = {
                          direction                   = "Outbound"
                          access                      = "Allow"
                          priority                    = 2002
                          protocol                    = "TCP"
                          source_port_range           = "*"
                          destination_port_range      = "*"
                          source_address_prefix       = "*"
                          destination_address_prefix  = "*"
                          }
                      }
                   }
      }
}
