resource "azurerm_linux_web_app" "webapp_azure" {
    name = var.webapp_name
    resource_group_name = var.resource_group_name
    location = var.location
    service_plan_id = var.service_plan_id
    site_config {
    application_stack {
      node_version = "20-lts"
    }
  
}
}