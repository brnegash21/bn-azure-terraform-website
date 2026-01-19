# This file defines the input variables for the production environment root module.
# Production environments use production-ready settings, such as 'prod-' prefixes, primary regions, and higher redundancy levels.

#
# Syntax template:
# variable "resource_group_name" {
#   description = "Name of the Azure resource group for production"
#   type        = string
#   default     = "prod-website-rg"
# }

# variable "location" {
#   description = "Azure region for production resources"
#   type        = string
#   default     = "East US"
# }

# variable "storage_account_name" {
#   description = "Name of the Azure storage account for production static website"
#   type        = string
# }

#
# Anatomy:
# - variable keyword: Declares a variable for input
# - variable name: Identifier for the variable (e.g., resource_group_name)
# - description: Human-readable explanation of the variable's purpose
# - type: Data type of the variable (string, number, bool, list, map, etc.)
# - default: Optional default value if not provided externally