variable "res_name" {
  type        = string
  description = "SqlServer: Name"

}
variable "res_rg_name" {
  type        = string
  description = "SqlServer: Resource group name"

}
variable "res_location" {
  type        = string
  description = "SqlServer: Location"

}
variable "res_version" {
  type        = string
  description = "SqlServer: Version ie 12.0"

}
variable "res_login" {
  type        = string
  description = "SqlServer: SA Username"

}
variable "res_password" {
  type        = string
  description = "SqlServer: SA Password"

}
variable "res_tags" {
  type        = map
  description = "Default Tags Map"

}