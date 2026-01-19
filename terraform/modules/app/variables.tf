# This file defines the input variables for the app module.
# Variables allow customization of Azure resources such as resource group names, storage account settings, and static website configurations.

#
# Syntax template:
# variable "resource_group_name" {
#   description = "Name of the Azure resource group"
#   type        = string
#   default     = "default-rg"
# }

variable "rg_name" {
  description = "Name of Azure resource group"
  type = string 
  default = "yeezy-rg"
}


# variable "location" {
#   description = "Azure region for resources"
#   type        = string
#   default     = "East US"
# }
variable "location" {
  description = "Azure region for resources"
  type = string
  default = "eastus"
}

# variable "storage_account_name" {
#   description = "Name of the Azure storage account for static website"
#   type        = string
# }

variable "storage_name" {
    description = "Name of the Azure storage account for static website"
    type = object({
      name = string
      resource_group_name = string
      location = string

      account_tier = string
      account_replication_type = string
    })
}



#
# Anatomy:
# - variable keyword: Declares a variable for input
# - variable name: Identifier for the variable (e.g., resource_group_name)
# - description: Human-readable explanation of the variable's purpose
# - type: Data type of the variable (string, number, bool, list, map, etc.)
# - default: Optional default value if not provided externally