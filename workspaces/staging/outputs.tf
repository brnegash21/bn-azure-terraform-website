# This file defines the outputs from the staging environment root module.
# Outputs expose information from the app module for staging, useful for CI/CD or monitoring.

#
# Syntax template:
# output "storage_account_name" {
#   description = "The name of the staging storage account"
#   value       = module.app.storage_account_name
# }

# output "storage_account_primary_web_endpoint" {
#   description = "The primary web endpoint for the staging static website"
#   value       = module.app.storage_account_primary_web_endpoint
# }

#
# Anatomy:
# - output keyword: Declares an output value from the module
# - output name: Identifier for the output (e.g., storage_account_name)
# - description: Explanation of what the output represents
# - value: Expression whose result is returned (e.g., reference to a module output)


# ============================================================
# OUTPUTS (ROOT) — ANATOMY
# ============================================================

output "resource_group_name" {
  description = "Staging resource group name"
  value       = module.resource_group.name
}

output "resource_group_id" {
  description = "Staging resource group ID"
  value       = module.resource_group.id
}
