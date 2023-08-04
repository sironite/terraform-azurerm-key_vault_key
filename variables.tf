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

variable "expiration_date" {
  type        = string
  description = "The expiration date of the key"
  default     = ""
}

variable "not_before_date" {
  type        = string
  description = "The not before date of the key"

}

variable "key_opts" {
  type        = list(string)
  description = "The options to use when creating the key in the key vault"
}

variable "enable_rotation_policy" {
  type        = bool
  description = "Whether to enable rotation policy for the key"
  default     = false
}

variable "expire_after" {
  type        = string
  description = "The duration after which the key should expire"
  default     = "P90D"
}

variable "notify_before_expiry" {
  type        = string
  description = "The duration before expiry to notify"
  default     = "P30D"
}

variable "enable_automatic_rotation" {
  type        = bool
  description = "Whether to enable automatic rotation for the key"
  default     = false
}

variable "time_after_creation" {
  type        = string
  description = "The duration after creation to rotate the key"
  default     = ""
}

variable "time_before_expiry" {
  type        = string
  description = "The duration before expiry to rotate the key"
  default     = ""
}