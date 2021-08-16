variable "res_dashboard_name" {
  type        = string
  description = "Dashboard name"
}
variable "res_rg_name" {
  type        = string
  description = "Resource group name"
}
variable "res_location" {
  type        = string
  description = "Location"
  default     = "# Hello all :)"
}
variable "res_md_content" {
  type        = string
  description = "Content"
}
variable "res_video_link" {
  type        = string
  description = "video link"
  default     = "https://www.youtube.com"
}
variable "res_dashboard_properties" {
  type        = string
  description = " properties of my dashboard"
}
