provider "azurerm" {
  version = "=1.38.0"
  subscription_id = "08613c68-8109-4ed0-9d14-050ed99c33cc"
  tenant_id       = "083b69ae-9b84-45ee-b8da-c4ba52a65031"
  access_key      = "pzHVwVZnZtEj1GGZMbicnN0SYqQ97wI1TwR9pgoxrO9we/I8W/BJKzMfonzOwozYv+lW/BLYs1oWNWBQC4iGfA=="
}

resource "azuread_application" "TestAppDocker" {
name = "TestAppDocker"
}

resource "azuread_service_principal" "TestAppDocker" {
application_id = azuread_application.TestAppDocker.application_id
}
