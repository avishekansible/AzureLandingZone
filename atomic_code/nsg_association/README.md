# Resource

- [ Network Security Group association ](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/subnet_network_security_group_association)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_subnet_id | ID of the subnet which is to be associated with NSG | list of strings | Yes |
| res_nsg_id | ID of the Network security group to which subnets to be associated | string | Yes |

---
# Dependencies

| Argument | Description
| --------- |:---------|
| Network Security Group | Network security group to which subnets to be associated |
| Subnet | Subnet which is to be associated with NSG |
---

# Sample Usage
#### Terraform Module
```js

module "nsg_association" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//nsg_association"
    res_subnet_id = [ "/subscriptions/669ae55e-5e4e-408f-9edd-4e6e50c4a787/resourceGroups/Newrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet" , "/subscriptions/669ae55e-5e4e-408f-9edd-4e6e50c4a787/resourceGroups/Newrg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1 "]
    res_nsg_id = "/subscriptions/669ae55e-5e4e-408f-9edd-4e6e50c4a787/resourceGroups/Newrg/providers/Microsoft.Network/networkSecurityGroups/nsg4545"
}
```