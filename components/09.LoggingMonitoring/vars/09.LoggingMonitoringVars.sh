cat <<EOF > terraform.tfvars
omsla_name="${omsla_name}"
location="${location}"
rg_name="${omsla_rg_name}"
omsla_sku="${omsla_sku}"
mon_diag_name="${mon_diag_name}"
mon_res_id=${mon_res_id}
tags=${tags}
EOF