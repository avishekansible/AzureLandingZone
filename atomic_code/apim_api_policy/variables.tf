variable "res_apim_name" {
  type        = string
  description = "Name of the API Management Service"
}
variable "res_rg_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "api_name_policy_mapping" {

  type = list(object({
    apiName = string
    policyFile = string
  }))
description = "API policy info"
}