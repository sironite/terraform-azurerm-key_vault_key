module "key_vault_key" {
  source  = "sironite/key-vault-key/azurerm"
  version = "X.Y.Z"

  key_name     = "my-key"
  key_vault_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.KeyVault/vaults/my-key-vault"
  key_type     = "RSA"
  key_size     = 2048

  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]

  enable_rotation_policy = true
  enable_automatic_rotation = true
  time_after_creation = "P90D"
  time_before_expiry = "P30D"
}