module "resource" {
    source = "../child_modules/resource-group"
    resource_group_name = var.resource_group_name
    location = var.location
  
}
module "servicepln" {
    source = "../child_modules/app-service-plan"
    resource_group_name = var.resource_group_name
    location = var.location
    sku_name = var.sku_name
    depends_on = [ module.resource ]
  
}
module "webapp" {
    source = "../child_modules/web-app-code"
    resource_group_name = var.resource_group_name
    location = var.location
    webapp_name = var.webapp_name
    service_plan_id = module.servicepln.id
    depends_on = [ module.servicepln ]
  
}