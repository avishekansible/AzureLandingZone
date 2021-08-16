variable "res_role_info" {
  description = "Application gateway backend HTTP settings"
  type = list(object({
    role_definition_type           = string
    role_definition                = string
    principal_id                   = string
  }))
}

variable "res_scope" {
  type        = string
  description = "Id of the Resource Group"
}
