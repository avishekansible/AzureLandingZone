# Resource

- [DNS Zone](https://registry.terraform.io/providers/hashicorp/azurerm/2.62.0/docs/resources/private_dns_zone)

---

# Resource inputs and arguments to modules
These are the inputs within this resource

| Argument | Description | Type | Required |
| --------- |:---------| :----------|:---------:|
| res_rg_name | Name of Resource Group where DNS Zone is to be created | string | Yes |
| res_zone_name | Name of DNS Zone which will be created. There must be minimum 2 labels(max 34) i.e abc.xyz| string | Yes |
| res_tags | DNS Zone Tags | map | Yes |

---

# Outputs

| Output | Description | Type | Sensitive |
| --------- |:---------| :----------|:---------:|
| res_out_zone_id | The ID of the DNS Zone | string | No |

# Dependencies

| Name | Description
| --------- |:---------|
| Resource Group | A resource group needs to be created prior to creation of Private DNS |

---

# Sample Usage
#### Terraform Module
```js

module "dns_zone" {
    source       = "git::https://$(System.AccessToken)@dev.azure.com/HPE-MVC/Azure-MVC/_git/atomic-code//dns_zone"
    res_rg_name  = "mvc-rg"
    res_zone_name = "mvc.pvtdns"
    res_tags     = {Environment = "dev"}
}
```