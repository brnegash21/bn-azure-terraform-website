# This file is the root module for the staging environment.
# It calls the app module and configures environment-specific settings.
# Staging differs from production by using prefixes like 'stg-', different locations, reduced redundancy (e.g., LRS instead of GRS), or smaller resource allocations for cost efficiency.

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


# ============================================================
# MODULE BLOCK — ANATOMY
# ============================================================
# Syntax template:
# module "<MODULE_NAME>" {
#   source = "<PATH_OR_REGISTRY>"
#   <INPUT_NAME> = <VALUE>
# }
#
# Anatomy:
# - module            : block keyword
# - "<MODULE_NAME>"   : module label (namespace for outputs)
# - source            : module source path
# - <INPUT_NAME>      : input var name expected by the module
module "resource_group" {
  source = "../modules/resource_group"

  rg_name = var.rg_name
  environment  = "cooking"
  location     = var.location
  tags         = var.tags
}

# ============================================================
# MODULE OUTPUT REFERENCE — ANATOMY
# ============================================================
# Syntax:
# module.<MODULE_NAME>.<OUTPUT_NAME>
#
# Example:
# module.resource_group.name
# - module          : module namespace
# - resource_group  : module label
# - name            : output in module outputs.tf
