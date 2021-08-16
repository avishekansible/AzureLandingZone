variable "res_rg_name" {
  type        = string
  description = "SQL Firewall Rule: Resource group name"
}

variable "res_sql_server" {
  type        = string
  description = "SQL Firewall Rule: SQL server name"
}

variable "res_allowed_cidrs" {
  type        = map(string)
  description = "SQL Firewall Rule: Map of allowed CIDR ranges"
}

variable "res_allowed_subnets" {
  type        = map(string)
  description = "SQL Firewall Rule: Map of allowed subnet IDs"
}
