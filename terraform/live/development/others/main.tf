resource "azurerm_log_analytics_workspace" "this" {
  name                = "log-nytes1-dev-je"
  location            = "japaneast"
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry1"
  resource_group_name = var.resource_group_name
  location            = "japaneast"
  sku                 = "Premium"
  admin_enabled       = false
}
