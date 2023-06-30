<!-- BEGIN_TF_DOCS -->
 # Key Vault Key
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-key_vault_key/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key)

# Usage - Module

##Key Vault Key
```hcl
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

  enable_rotation_policy          = true
  rotation_expire_after           = "90d"
  rotation_notify_before_expiry   = "7d"
  rotation_time_after_creation    = "30d"
  rotation_time_before_expiration = "30d"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_key.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| key\_name | The name of the key to create in the key vault | `string` | yes |
| key\_opts | The options to use when creating the key in the key vault | `list(string)` | yes |
| key\_size | The size of the key to create in the key vault | `number` | yes |
| key\_type | The type of key to create in the key vault | `string` | yes |
| key\_vault\_id | The ID of the key vault to create the key in | `string` | yes |
| curve | The curve of the key to create in the key vault | `string` | no |
| enable\_rotation\_policy | Whether or not to enable key rotation policy | `bool` | no |
| rotation\_expire\_after | The duration after which the key should expire | `string` | no |
| rotation\_notify\_before\_expiry | The duration before expiry to notify that the key is about to expire | `string` | no |
| rotation\_time\_after\_creation | The duration after which the key should be rotated after creation | `string` | no |
| rotation\_time\_before\_expiration | The duration before expiry to rotate the key | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| key\_id | The ID of the key in the Azure Key Vault. |
| key\_name | The name of the key in the Azure Key Vault. |
| key\_opts | The options of the key in the Azure Key Vault. |
| key\_size | The size of the key in the Azure Key Vault. |
| key\_type | The type of the key in the Azure Key Vault. |
| key\_version | The version of the key in the Azure Key Vault. |
| rotation\_policy | The rotation policy of the key in the Azure Key Vault. |

## Related documentation
<!-- END_TF_DOCS -->