variable "res_api_operation" {
  type        = list(object({
    operationid = string
    displayname = string
    method      = string
    urltemplate = string
    description = string
  }))
  description = "Details required for API Operation"
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
