# This file defines the outputs from the production environment root module.
# Outputs expose information from the app module for production, useful for integration with other systems or monitoring.

#
# Syntax template:
# output "storage_account_name" {
#   description = "The name of the production storage account"
#   value       = module.app.storage_account_name
# }

# output "storage_account_primary_web_endpoint" {
#   description = "The primary web endpoint for the production static website"
#   value       = module.app.storage_account_primary_web_endpoint
# }

#
# Anatomy:
# - output keyword: Declares an output value from the module
# - output name: Identifier for the output (e.g., storage_account_name)
# - description: Explanation of what the output represents
# - value: Expression whose result is returned (e.g., reference to a module output)