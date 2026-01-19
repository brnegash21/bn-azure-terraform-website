# This file is the root module for the production environment.
# It calls the app module and configures environment-specific settings.
# Production differs from staging by using production prefixes like 'prod-', primary regions, higher redundancy (e.g., GRS or ZRS), larger resource allocations, and additional security features like managed identities or advanced CDN configurations.

#
# Syntax template:
# module "app" {
#   source = "../modules/app"
#   resource_group_name = var.resource_group_name
#   location = var.location
#   storage_account_name = var.storage_account_name
# }

#
# Anatomy:
# - module keyword: Calls a child module to reuse configuration
# - module name: Local name for the module instance (e.g., app)
# - source: Path to the module directory
# - arguments: Variables passed to the module (e.g., resource_group_name, location)