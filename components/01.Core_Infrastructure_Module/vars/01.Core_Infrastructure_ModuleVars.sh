#!/bin/bash
cat << EOF > terraform.tfvars
rg_name="${core_infra_rg_name}"
location="${location}"
zone_name="${zone_name}"
tags=${tags}
EOF