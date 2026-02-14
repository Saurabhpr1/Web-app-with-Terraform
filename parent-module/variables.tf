variable "resource_group_name" {
    description = "Name of the resource group"
    type        = string
  
}
variable "location" {
    description = "Azure region where the resource group will be created"
    type        = string
}
variable "sku_name" {
    description = "The SKU name for the service plan"
    type        = string
  
}
variable "webapp_name" {
  description = "Name of the web app"
  type        = string
}
