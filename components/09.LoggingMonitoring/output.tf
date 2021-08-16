output "mod_out_rg_name" {
  value = module.rg.res_out_rg_name
}

output "mod_out_la_id" {
  value = module.la.res_out_la_id
}

output "mod_out_la_primary_shared_key" {
  value = module.la.res_out_la_primary_shared_key
  sensitive = true
}

output "mod_out_workspace_id" {
  value = module.la.res_out_la_workspace_id
}
