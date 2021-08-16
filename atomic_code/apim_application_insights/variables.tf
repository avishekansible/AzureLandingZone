variable "res_location" {
  type        = string
  description = "Appication insights: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "Appication insights: Resource Group Name"
}

variable "res_apim_applicationinsight" {
  type        = list(object({
    name = string
    application_type = string
}))
  description = "Details required for application insights"
}