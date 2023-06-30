output "key_id" {
  description = "The ID of the key in the Azure Key Vault."
  value       = azurerm_key_vault_key.this.id
}

output "key_version" {
  description = "The version of the key in the Azure Key Vault."
  value       = azurerm_key_vault_key.this.version
}

output "key_name" {
  description = "The name of the key in the Azure Key Vault."
  value       = azurerm_key_vault_key.this.name
}

output "key_type" {
  description = "The type of the key in the Azure Key Vault."
  value       = azurerm_key_vault_key.this.key_type
}

output "key_size" {
  description = "The size of the key in the Azure Key Vault."
  value       = azurerm_key_vault_key.this.key_size
}

output "key_opts" {
  description = "The options of the key in the Azure Key Vault."
  value       = azurerm_key_vault_key.this.key_opts
}

output "rotation_policy" {
  description = "The rotation policy of the key in the Azure Key Vault."
  value       = azurerm_key_vault_key.this.rotation_policy
}
