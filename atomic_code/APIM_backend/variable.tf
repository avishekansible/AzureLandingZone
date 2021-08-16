variable "res_api_name" {
  type        = string
  description = "Name of the API Management to be created"
}

variable "res_api_backend_name" {
  type        = string
  description = "Name of the API Management backend to be created"
}

variable "res_rg_name" {
  type        = string
  description = "Name of the Resource group in which APIM needs to be created"
}

variable "res_protocol" {
  type        = string
  description = "Name of the sku under which APIM needs to be created"
}

variable "res_url" {
  type        = string
  description = "URL link"
}

variable "res_validate_certificate_chain" {
  type        = bool
  description = "Flag indicating whether SSL certificate chain validation should be done when using self-signed certificates for the backend host."
}

variable "res_validate_certificate_name" {
  type        = bool
  description = "Flag indicating whether SSL certificate name validation should be done when using self-signed certificates for the backend host"
}