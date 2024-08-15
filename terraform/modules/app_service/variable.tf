variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}
variable "app_service_plan_id" {
  type = string
}
variable "connect_string"{
  type = string
}
variable "master_key"{
  type = string
}
variable name {
  type = string
  default = "bkr001-app-service"

}
