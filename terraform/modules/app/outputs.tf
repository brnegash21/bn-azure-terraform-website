# This file defines the outputs from the app module.
# Outputs expose information about the created Azure resources, such as storage account names, endpoints, and resource IDs for use in other modules or for reference.

#
# Syntax template:
# output "storage_account_name" {
#   description = "The name of the Azure storage account"
#   value       = azurerm_storage_account.example.name
# }


# output "storage_account_primary_web_endpoint" {
#   description = "The primary web endpoint for the static website"
#   value       = azurerm_storage_account.example.primary_web_endpoint
# }

# output "resource_group_id" {
#   description = "The ID of the Azure resource group"
#   value       = azurerm_resource_group.example.id
# }

#
# Anatomy:
# - output keyword: Declares an output value from the module
# - output name: Identifier for the output (e.g., storage_account_name)
# - description: Explanation of what the output represents
# - value: Expression whose result is returned (e.g., reference to a resource attribute)