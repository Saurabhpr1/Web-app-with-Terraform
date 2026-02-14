resource "azurerm_service_plan" "websp_azure" {
    name                = "webapp-service-plan"
    resource_group_name = var.resource_group_name
    location            = var.location
    os_type             = "Linux"
    sku_name            = var.sku_name
  
}