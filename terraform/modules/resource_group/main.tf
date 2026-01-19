# ============================================================
# LOCALS BLOCK — ANATOMY
# ============================================================
# Syntax template:
# locals {
#   <LOCAL_NAME> = <EXPRESSION>
# }
#
# Anatomy:
# - locals          : block keyword
# - <LOCAL_NAME>    : local name (referenced as local.<LOCAL_NAME>)
# - <EXPRESSION>    : computed expression
locals {
  # Naming convention (simple):
  # rg-<project>-<environment>
  #
  # Example:
  # rg-yeezy-staging
  resource_group_name = "${var.rg_name}-${var.environment}-rg"
}

# ============================================================
# RESOURCE BLOCK — ANATOMY
# ============================================================
# Syntax template:
# resource "<PROVIDER>_<RESOURCE_TYPE>" "<RESOURCE_NAME>" {
#   <ARGUMENT> = <VALUE>
# }
#
# Anatomy:
# - resource                      : block keyword
# - "azurerm_resource_group"      : resource type
# - "this"                        : resource name label (used in references)
# - name/location/tags            : arguments (configure the RG)
resource "azurerm_resource_group" "this" {
  # name argument:
  # - local.resource_group_name
  #   - local     : locals namespace
  #   - resource_group_name : local name
  name = local.resource_group_name

  # location argument:
  # - var.location
  #   - var       : variable namespace
  #   - location  : variable name
  location = var.location

  # tags argument:
  # merge(...) combines two maps. Right-most values win on key collisions.
  tags = merge(
    var.tags,
    {
      Project     = var.rg_name
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
}

# ============================================================
# REFERENCE ANATOMY (RESOURCE ATTRIBUTES)
# ============================================================
# Syntax:
# <RESOURCE_TYPE>.<RESOURCE_NAME>.<ATTRIBUTE>
#
# Example:
# azurerm_resource_group.this.name
# - azurerm_resource_group : resource type
# - this                   : resource name label
# - name                   : attribute
