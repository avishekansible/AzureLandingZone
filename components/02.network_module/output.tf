output "mod_out_vnet_name" {
  value = "module.vnet.res_out_vnet_name"
}

output "mod_out_vnet_id" {
  value = "module.vnet.res_out_vnet_id"
}

output "mod_out_subnets_names" {
  value = module.subnet.res_out_subnets_names
}

output "mod_out_subnets_ids" {
  value = module.subnet.res_out_subnets_ids
}

output "mod_out_subnets_info" {
  value = module.subnet.res_out_subnets_ids
}

output "mod_out_subnets_address_ranges" {
  value = module.subnet.res_out_subnets_address_ranges
}

output "mod_out_nsg_ids" {
  value = module.nsg.res_out_nsg_id
}

output "mod_out_udr_ids" {
  value = module.udr.res_out_routes_ids
}