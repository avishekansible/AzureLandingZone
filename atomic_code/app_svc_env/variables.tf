variable "res_ase_name" {
    type        = string
    description = "App Svc Env: Name"
}

variable "res_ase_subnet_id" {
    type        = string
    description = "App Svc Env: Subnet ID"
}

variable "res_ase_pricing_tier" {
    type        = string
    description = "App Svc Env: Princing Tier"
}

variable "res_ase_fe_scale" {
    type        = string
    description = "App Svc Env: Front end Scale factor"
}

variable "res_rg_name" {
    type        = string
    description = "App Svc Env: Resource Group Name"
}

variable "res_ilb_mode" {
    type        = string
    description = "App Svc Env: ILB Mode"
}
