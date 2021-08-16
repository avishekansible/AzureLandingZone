# Variables: APIM_Namedvalue

variable "res_rg_name" {
  type        = string
  description = "APIM Logger : Resource Group Name"
}

variable "res_api_management_name" {
  type        = string
  description = "APIM Logger : API Management Service name"
}

variable "res_name" {
  type        = string
  description = "APIM Logger : Name of the logger "
}

variable "res_resource_id" {
  type        = string
  description = "APIM Logger : The target resource id which will be linked in the API-Management portal page "
}

variable "res_instrumentation_key" {
  type        = string
  description = "APIM Logger : The instrumentation key used to push data to Application Insights"
}