variable "res_udr_routes" {
  type = map(object({
    routes = map(map(string))
  }))
}

variable "res_vnet_rg_name" {
  type        = string
  description = "foo bar"
}

variable "res_location" {
  type        = string
  description = "location"
}