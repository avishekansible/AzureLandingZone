variable "res_mon_log_profile_name" {
  type        = string
  description = "Monitor Log Profile: Monitor Log Profile Name"
}

variable "res_mon_categories" {
  type        = list
  description = "Monitor Log Profile: List of Monitor Categories"
}

// variable "res_mon_locations" {
//     type            = list
//     description     = "Monitor Location"
// }

variable "res_mon_sa_id" {
  type        = string
  description = "Monitor Log Profile: Monitor Storage Account ID"
}

variable "res_mon_retention_days" {
  type        = string
  description = "Monitor Log Profile: Monitor Retention in Days"
}
