# This file defines the input variables for the staging environment root module.
# Staging environments typically use different naming conventions (e.g., 'stg-' prefixes), smaller resource sizes, or test regions compared to production.

#
# Syntax template:
# variable "resource_group_name" {
#   description = "Name of the Azure resource group for staging"
#   type        = string
#   default     = "stg-website-rg"
# }

# variable "location" {
#   description = "Azure region for staging resources"
#   type        = string
#   default     = "East US 2"
# }

# variable "storage_account_name" {
#   description = "Name of the Azure storage account for staging static website"
#   type        = string
# }

#
# Anatomy:
# - variable keyword: Declares a variable for input
# - variable name: Identifier for the variable (e.g., resource_group_name)
# - description: Human-readable explanation of the variable's purpose
# - type: Data type of the variable (string, number, bool, list, map, etc.)
# - default: Optional default value if not provided externally

# ============================================================
# VARIABLES (ROOT WRAPPER) — ANATOMY
# ============================================================

variable "rg_name" {
  description = "Base project name used for naming"
  type        = string
}

variable "location" {
  description = "Azure region for the resource group"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Base tags applied to resources"
  type        = map(string)
  default     = {}
}
