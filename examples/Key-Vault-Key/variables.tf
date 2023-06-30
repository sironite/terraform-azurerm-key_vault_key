variable "key_name" {
  type        = string
  description = "The name of the key to create in the key vault"
}

variable "key_vault_id" {
  type        = string
  description = "The ID of the key vault to create the key in"
}

variable "key_type" {
  type        = string
  description = "The type of key to create in the key vault"
}

variable "key_size" {
  type        = number
  description = "The size of the key to create in the key vault"
}
variable "curve" {
  type        = string
  description = "The curve of the key to create in the key vault"
  default     = "P-256"
}

variable "key_opts" {
  type        = list(string)
  description = "The options to use when creating the key in the key vault"
}

variable "enable_rotation_policy" {
  type        = bool
  description = "Whether or not to enable key rotation policy"
  default     = false
}

variable "rotation_expire_after" {
  type        = string
  description = "The duration after which the key should expire"
  default     = "90d"
}

variable "rotation_notify_before_expiry" {
  type        = string
  description = "The duration before expiry to notify that the key is about to expire"
  default     = "30d"
}

variable "rotation_time_after_creation" {
  type        = string
  description = "The duration after which the key should be rotated after creation"
  default     = "365d"
}

variable "rotation_time_before_expiration" {
  type        = string
  description = "The duration before expiry to rotate the key"
  default     = "60d"
}