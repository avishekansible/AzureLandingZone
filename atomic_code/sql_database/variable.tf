variable "res_name" {
  type        = string
  description = "SQL Database: Name"
}

variable "res_rg_name" {
  type        = string
  description = "SQL Database: Resource group name"
}

variable "res_location" {
  type        = string
  description = "SQL Database: Location"
}

variable "res_sql_server" {
  type        = string
  description = "SQL Database: Sql Server Name"
}

variable "res_edition" {
  type        = string
  description = "SQL Database: Edition of AzureDB - Basic/Standard/Premium etc"
}

variable "res_service_objective_name" {
  type        = string
  description = "SQL Database: Size of AzureDB - S1/S2 etc"
}

variable "res_collation" {
  type        = string
  description = "SQL Database: Collation sequence, e.g. SQL_LATIN1_GENERAL_CP1_CI_AS"
}

variable "res_tags" {
  type        = map
  description = "Default Tags Map"
}
