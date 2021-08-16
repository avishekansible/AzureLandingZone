variable "res_location" {
  type        = string
  description = "foo bar"
}

variable "res_rg_name" {
  type        = string
  description = "foo bar"
}

variable "res_vm_names" {
  type        = list(string)
  description = "foo bar"
}

variable "res_active_directory_domain" {
  type        = string
  description = "foo bar"
}

variable "res_active_directory_username" {
  type        = string
  description = "foo bar"
}

variable "res_active_directory_password" {
  type        = string
  description = "foo bar"
}

variable "res_active_directory_OUPath" {
  type        = string
  description = "foo bar"
  default     = ""
}
