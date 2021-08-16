variable "res_asp_name" {
    type        = string
    description = "App Svc Plan: Name"
}

variable "res_location" {
    type        = string
    description = "App Svc Plan: Location"
}

variable "res_rg_name" {
    type        = string
    description = "App Svc Plan: resource Group Name"
}

variable "res_asp_kind" {
    type        = string
    description = "App Svc Plan: Kind"
}

variable "res_asp_reserved" {
    type        = bool
    description = "App Svc Plan: Reserved True/False"
}

variable "res_asp_ase_id" {
    type        = string
    description = "App Svc Plan: App Svc Env ID"
}

variable "res_tags" {
    type        = map
    description = "App Svc Plan: Tags"
}

variable "res_asp_tier" {
    type        = string
    description = "App Svc Plan: Tier"
}

variable "res_asp_size" {
    type        = string
    description = "App Svc Plan: Size"
}

variable "res_asp_capacity" {
    type        = number
    description = "App Svc Plan: Capacity"
}
