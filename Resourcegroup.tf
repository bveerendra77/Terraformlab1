terraform {
  required_version = ">= 0.13.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.41.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "Dell-DEV-East-US-RG"
  location = "east us"

}