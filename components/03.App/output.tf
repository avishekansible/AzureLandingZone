output "mod_out_rg_name" {
  value = module.rg.res_out_rg_name
}

output "mod_out_rg_id" {
  value = module.rg.res_out_rg_id
}

output "mod_out_role_id" {
    value = module.role_assignment.*.res_out_role_id
}