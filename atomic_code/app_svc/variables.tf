variable "res_app_svc_name" {
    type        = string
    description = "App Svc Env: Name"
}

variable "res_location" {
    type        = string
    description = "App Svc Env: location"
}

variable "res_rg_name" {
    type        = string
    description = "App Svc Env: resource group name"
}

variable "res_app_svc_plan_id" {
    type        = string
    description = "App Svc Env: App svc Plan ID"
}

variable "https_only" {
    type        = bool
    description = "App Svc Env: https only True/False"
}

variable "always_on" {
    type        = bool
    description = "App Svc Env: Always on True/False"
}

variable "res_app_svc_java_version" {
    type        = string
    description = "App Svc Env: Java version"
}

variable "res_app_svc_java_container" {
    type        = string
    description = "App Svc Env: Java Container"
}

variable "res_app_svc_java_container_version" {
    type        = string
    description = "App Svc Env: Java container Version"
}
