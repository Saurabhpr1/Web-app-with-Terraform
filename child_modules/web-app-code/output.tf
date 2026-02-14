output "webapp_default_hostname" {
  value       = azurerm_linux_web_app.webapp_azure.default_hostname
  description = "URL of the deployed Web App"
}