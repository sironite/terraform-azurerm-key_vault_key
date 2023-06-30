resource "azurerm_key_vault_key" "this" {
  name         = var.key_name
  key_vault_id = var.key_vault_id
  key_type     = var.key_type
  key_size     = var.key_size

  curve = var.curve


  key_opts = var.key_opts

  dynamic "rotation_policy" {
    for_each = var.enable_rotation_policy ? [1] : []
    content {
      expire_after         = var.rotation_expire_after
      notify_before_expiry = var.rotation_notify_before_expiry
      automatic {
        time_after_creation    = var.rotation_time_after_creation
        time_before_expiration = var.rotation_time_before_expiration
      }
    }
  }
}
