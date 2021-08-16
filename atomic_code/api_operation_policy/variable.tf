variable "res_api_operation_policy" {
    type        = list(object({
    operationid = string
    policy      = string
  }))
description = "API Operation Policy Details"
}
variable "res_api_name" {
  type        = string
  description = "Name of the API within the API Management Service"
}
variable "res_apim_name" {
  type        = string
  description = "Name of the API Management Service"
}
variable "res_rg_name" {
  type        = string
  description = "Name of the Resource Group"
}
