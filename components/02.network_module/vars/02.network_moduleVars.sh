#!/bin/bash
cat << EOF > terraform.tfvars
vnet_name="${vnet_name}"
location="${location}"
vnet_address_prefix=${vnet_address_prefix}
vnet_dns_servers=${vent_dns_servers}
tags=${tags}
subnets_info=${subnets_info}
serv_endp=${serv_endp}
sa_name=${nw_sa_name}
sa_rg_name=${nw_sa_rg_name}
container_name=${container_name}
nsg=${nsg}
udr=${udr}
EOF