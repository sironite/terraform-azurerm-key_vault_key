# Terraform module | AzureRM - Key Vault Key

This Terraform module is designed to create a Key Vault Key for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Key Vault Key`

```hcl
module "key_vault_key" {
    source = "sironite/key-vault-key/azurerm"
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

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
