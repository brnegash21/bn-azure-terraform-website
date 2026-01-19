# ============================================================
# OUTPUT BLOCK — ANATOMY
# ============================================================
# Syntax template:
# output "<OUTPUT_NAME>" {
#   description = "<TEXT>"
#   value       = <EXPRESSION>
#   sensitive   = <OPTIONAL_BOOL>
# }
#
# Anatomy:
# - output           : block keyword
# - "<OUTPUT_NAME>"  : output name (module callers use module.<name>.<output>)
# - value            : expression returned
# - description      : documentation

output "name" {
  description = "Resource group name"
  value       = azurerm_resource_group.this.name
}

output "id" {
  description = "Resource group resource ID"
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "Resource group location"
  value       = azurerm_resource_group.this.location
}
