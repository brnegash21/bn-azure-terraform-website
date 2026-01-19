# ============================================================
# TERRAFORM BLOCK (MODULE) — ANATOMY
# ============================================================
# Syntax template:
# terraform {
#   required_version = "<VERSION_CONSTRAINT>"
#
#   required_providers {
#     <PROVIDER_LOCAL_NAME> = {
#       source  = "<NAMESPACE>/<PROVIDER>"
#       version = "<VERSION_CONSTRAINT>"
#     }
#   }
# }
#
# Anatomy:
# - terraform            : block keyword
# - required_version     : argument (Terraform CLI constraint)
# - required_providers   : nested block (providers required)
# - azurerm              : provider local name
# - source               : provider registry address
# - version              : provider version constraint
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
