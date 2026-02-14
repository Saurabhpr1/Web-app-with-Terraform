variable "webapp_name" {
  description = "Name of the web app"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}
variable "location" {
  description = "Azure region where the web app will be deployed"
  type        = string
}
variable "service_plan_id" {
  description = "ID of the App Service Plan to use for the web app"
  type        = string
}