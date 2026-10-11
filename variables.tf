variable "route53_zones" {
  description = <<EOT
Map of route53_zones, attributes below
Required:
    - name
Optional:
    - comment
    - delegation_set_id
    - enable_accelerated_recovery
    - force_destroy
    - tags
    - tags_all
    - vpc (block):
        - vpc_id (required)
        - vpc_region (optional)
EOT

  type = map(object({
    name                        = string
    comment                     = optional(string)
    delegation_set_id           = optional(string)
    enable_accelerated_recovery = optional(bool)
    force_destroy               = optional(bool)
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
    vpc = optional(list(object({
      vpc_id     = string
      vpc_region = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_zones : (
        v.delegation_set_id == null || (length(v.delegation_set_id) >= 0 && length(v.delegation_set_id) <= 32)
      )
    ])
    error_message = "must be between 0 and 32 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

