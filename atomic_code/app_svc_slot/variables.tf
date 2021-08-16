variable "res_app_svc_slot_name" {
    type        = string
    description = "App Svc Slot: name"
}
variable "res_app_svc_name" {
    type        = string
    description = "App Svc Slot: App Service Name"
}
variable "res_location" {
    type        = string
    description = "App Svc Slot: Location"
}
variable "res_rg_name" {
    type        = string
    description = "App Svc Slot: Resource Group Name"
}
variable "res_app_svc_plan_id" {
    type        = string
    description = "App Svc Slot: App Svc Plan ID"
}
variable "res_tags" {
    type        = map
    description = "App Svc Slot: Tags"
}
variable "res_app_svc_slot_java_version" {
    type        = string
    description = "App Svc Slot: Java Version"
}
variable "res_app_svc_slot_java_container" {
    type        = string
    description = "App Svc Slot: Java Container"
}
variable "res_app_svc_slot_java_container_version" {
    type        = string
    description = "App Svc Slot: Java Container Version"
}