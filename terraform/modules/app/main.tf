# This file contains the main Terraform configuration for the app module.
# It defines the Azure resources needed for the static website, including resource groups, storage accounts with static website hosting enabled, and optionally CDN profiles or managed identities for access.







provider "azurerm" {
  features {
    
  }
}








#
# Syntax template:
# resource "azurerm_resource_group" "example" {
#   name     = var.resource_group_name
#   location = var.location
# }

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}



# resource "azurerm_storage_account" "example" {
#   name                     = var.storage_account_name
#   resource_group_name      = azurerm_resource_group.example.name
#   location                 = azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   static_website {
#     index_document = "index.html"
#     error_404_document = "404.html"
#   }
# }


# resource "azurerm_cdn_profile" "example" {
#   name                = "example-cdn"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   sku                 = "Standard_Microsoft"
# }

#
# Anatomy:
# - resource keyword: Declares an Azure resource to be created or managed
# - resource type: Type of Azure resource (e.g., azurerm_resource_group for resource groups, azurerm_storage_account for storage accounts)
# - resource name: Local identifier for referencing the resource within Terraform
# - arguments: Configuration options specific to the resource (e.g., name, location, account_tier)
# - nested blocks: Additional configuration blocks (e.g., static_website for enabling static site hosting on storage account)