variable "res_location" {
  type        = string
  description = "foo bar"
}

variable "res_rg_name" {
  type        = string
  description = "foo bar"
}

variable "res_vm_name" {
  type        = string
  description = "foo bar"
}

variable "res_tags" {
  type        = map
  description = "Compute SQL Server: Default Tags Map"
}

variable "res_sql_ServerLicenseType" {
  type        = string
  description = "SQL Server Licence Type. Expecting either PAYG or AHUB. For developer versions use PAYG. For Standard and Enterprise use AHUB"
}

variable "res_sql_AutopatchingDayOfWeek" {
  type        = string
  description = "foo bar"
  //default = "Sunday"
}

variable "res_sql_AutopatchingStartHour" {
  type        = string
  description = "foo bar"
  //default = "2"
}

variable "res_sql_AutopatchingWindowDuration" {
  type        = string
  description = "foo bar"
  //default = "60"
}

variable "res_depends_on" {
  type        = list(string)
  description = "fake depends_on"
}