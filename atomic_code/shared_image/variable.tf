variable "res_si_name" {
  type        = string
  description = "Shared Image: Name"
}

variable "res_sig_name" {
  type        = string
  description = "Shared Image: Shared Image Gallery Name"
}

variable "res_si_rg_name" {
  type        = string
  description = "Shared Image: Resource Group Name"
}

variable "res_location" {
  type        = string
  description = "Shared Image: Location"
}

variable "res_si_os_type" {
  type        = string
  description = "Shared Image: OS Type"
}

variable "res_tags" {
  type        = map
  description = "Default Tags Map"
}

variable "res_si_publisher" {
  type        = string
  description = "Shared Image: Publisher"
}

variable "res_si_offer" {
  type        = string
  description = "Shared Image: Offer"
}

variable "res_si_sku" {
  type        = string
  description = "Shared Image: Sku"
}

variable "res_si_ver_name" {
  type        = string
  description = "Shared Image: Version Name"
}

variable "res_image_id" {
  type        = string
  description = "Shared Image: Image ID"
}

variable "res_regions" {
  type        = list(string)
  description = "Regions for the images to be placed in."
}