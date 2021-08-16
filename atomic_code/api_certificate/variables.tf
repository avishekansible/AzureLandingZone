variable "res_apim_name" {
  type        = string
  description = "Name of the API Management Service"
}
variable "res_rg_name" {
  type        = string
  description = "Name of the Resource Group"
}
variable "res_api_cert_name" {
  type        = string
  description = "Name of the certificate within the API Management Service"
}

variable "res_api_cert_file" {
  type        = string
  description = "Path and name of the certificate file"
}