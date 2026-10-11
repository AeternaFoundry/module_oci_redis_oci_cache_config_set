variable "redis_oci_cache_config_sets" {
  description = <<EOT
Map of redis_oci_cache_config_sets, attributes below
Required:
    - compartment_id
    - display_name
    - software_version
    - configuration_details (block):
        - items (required, block):
            - config_key (required)
            - config_value (required)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id   = string
    display_name     = string
    software_version = string
    defined_tags     = optional(map(string))
    description      = optional(string)
    freeform_tags    = optional(map(string))
    configuration_details = object({
      items = list(object({
        config_key   = string
        config_value = string
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redis_oci_cache_config_sets : (
        length(v.configuration_details.items) >= 1
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
}

