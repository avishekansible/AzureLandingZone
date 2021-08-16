variable "rg_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  description = "Azure Region Location Name for the Resource Group"
}

variable "tags" {
  type        = map
  description = "Resource Group Tags"
}

variable "role_assignment_details" {
  type = list(object({
    role_definition_type = string
    role_definition      = string
    principal_id         = string
  }))
    description = "Details required to create Role assignment"
}