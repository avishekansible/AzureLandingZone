# Variables: APIM_Namedvalue

variable "res_rg_name" {
  type        = string
  description = "APIM Named Value: Resource Group Name"
}

variable "res_api_management_name" {
  type        = string
  description = "APIM Named Value: API Management Service name"
}

variable "res_apim_nv_info" {
  type = list
  description = "APIM Named Value: List of objects where each element contains three parameters - name, display_name and value"
}
