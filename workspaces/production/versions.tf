# This file defines the Terraform version and required providers for the production environment root module.
# It ensures compatibility for production deployments, potentially using stricter version constraints than staging.

#
# Syntax template:
# terraform {
#   required_version = ">=1.0"
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~>3.0"
#     }
#   }
# }

#
# Anatomy:
# - terraform block: Contains Terraform configuration settings
#   - required_version: Specifies the minimum Terraform version required
#   - required_providers: Defines the providers needed for Azure resources
#     - azurerm: The Azure Resource Manager provider for managing Azure services
#       - source: The source registry for the provider (e.g., hashicorp registry)
#       - version: The version constraint for the provider (e.g., ~>3.0 for compatible versions)