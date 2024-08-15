variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable app_service_plan_id {
  type = string
  default = "azurerm_app_service_plan.this.id"
}