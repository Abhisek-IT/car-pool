
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.67.0"
    }
  }
}



provider "azurerm" {
  features { }
}

resource "azurerm_resource_group" "rsys" {
  name     = "RG1"
  location = "center India"
}

resource "azurerm_storage_account" "STG" {
  name                     = "Strg1"
  resource_group_name      = azurerm_resource_group.rsys.name
  location                 = azurerm_resource_group.rsys.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

