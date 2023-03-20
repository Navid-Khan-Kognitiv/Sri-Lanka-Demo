resource "azurerm_app_service_plan" "this" {
  name                = "slk-appserviceplan"
  location            = var.location
  resource_group_name = azurerm_resource_group.this.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "this" {
  name                = "slk-app-service"
  location            = var.location
  resource_group_name = azurerm_resource_group.this.name
  app_service_plan_id = azurerm_app_service_plan.this.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }
}