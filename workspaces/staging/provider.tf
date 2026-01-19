# ============================================================
# PROVIDER BLOCK — ANATOMY
# ============================================================
# Syntax template:
# provider "<PROVIDER_LOCAL_NAME>" {
#   <ARGUMENT> = <VALUE>
# }
#
# Anatomy:
# - provider  : block keyword
# - "azurerm" : provider local name
#
# Note:
# - azurerm requires a `features {}` block.
# - Authentication can be via Azure CLI, environment vars, OIDC, etc.
provider "azurerm" {
  features {}
}
