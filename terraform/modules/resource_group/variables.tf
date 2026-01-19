# ============================================================
# VARIABLE BLOCK — ANATOMY
# ============================================================
# Syntax template:
# variable "<VAR_NAME>" {
#   description = "<TEXT>"
#   type        = <TYPE>
#   default     = <OPTIONAL_DEFAULT>
# }
#
# Anatomy:
# - variable          : block keyword
# - "<VAR_NAME>"      : variable name (referenced as var.<VAR_NAME>)
# - description       : documentation
# - type              : type constraint
# - default           : optional fallback

variable "rg_name" {
  description = "Base project name used for naming (e.g., 'yeezy')"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., 'cooking' or 'live')"
  type        = string
}

variable "location" {
  description = "Azure region for the resource group (e.g., 'West Europe')"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resource group"
  type        = map(string)
  default     = {}
}
