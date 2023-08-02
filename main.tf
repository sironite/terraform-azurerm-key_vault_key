resource "azurerm_key_vault_key" "this" {
  name         = var.key_name
  key_vault_id = var.key_vault_id
  key_type     = var.key_type
  key_size     = var.key_size

  expiration_date = var.expiration_date
  not_before_date = var.not_before_date

  key_opts = var.key_opts

  dynamic "rotation_policy" {
    for_each = var.enable_rotation_policy ? [1] : []
    content {
      expire_after         = var.expire_after
      notify_before_expiry = var.notify_before_expiry

      dynamic "automatic" {
        for_each = var.enable_automatic_rotation ? [1] : []
        content {
          time_after_creation = var.time_after_creation
          time_before_expiry  = var.time_before_expiry
        }
      }
    }
  }

  lifecycle {
    ignore_changes = [
      rotation_policy,
      expiration_date,
      not_before_date
    ]
  }
}
