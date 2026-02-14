output "weburl" {
    value = module.webapp.webapp_default_hostname
  
}
output "service_plan_id" {
  description = "The ID of the App Service Plan used by the Web App"
  value       = module.servicepln.id
}