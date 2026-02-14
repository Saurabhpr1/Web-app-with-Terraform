variable "location" {
    description = "The location of the resource group"
    type        = string
  
}
variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
  
}
variable "sku_name" {
    description = "The SKU name for the service plan"
    type        = string
    default     = "S2"
  
}