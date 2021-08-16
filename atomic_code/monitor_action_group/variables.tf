variable "res_mag_name" {
  type        = string
  description = "Resource name"
}

variable "res_mag_rg_name" {
  type        = string
  description = "Resource Group Name"
}

variable "res_tags" {
  type        = map(string)
  description = "Default Tags Map"
}

variable "res_mag_short_name" {
  type        = string
  description = "The short name of the action group"
  default     = "Action required"
}

variable "res_email_rcvr_name" {
  type        = string
  description = "The name of the email receiver"
}

variable "res_email_rcvr_address" {
  type        = string
  description = "The email address of this receiver"
}

