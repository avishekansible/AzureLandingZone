variable "res_container_name" {
  type        = string
  description = "Storage Container: Name"
}
variable "res_rg_name" {
  type        = string
  description = "Storage Container: Resource Group Name"
  default     = null
}
variable "res_sa_name" {
  type        = string
  description = "Storage Container: Storage Account Name"
}
variable "res_access_type" {
  type        = string
  description = "Storage Container: The Access Level configured for this Container"
}