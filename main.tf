resource "oci_redis_oci_cache_config_set" "redis_oci_cache_config_sets" {
  for_each = var.redis_oci_cache_config_sets

  compartment_id   = each.value.compartment_id
  display_name     = each.value.display_name
  software_version = each.value.software_version
  defined_tags     = each.value.defined_tags
  description      = each.value.description
  freeform_tags    = each.value.freeform_tags

  configuration_details {
    dynamic "items" {
      for_each = each.value.configuration_details.items
      content {
        config_key   = items.value.config_key
        config_value = items.value.config_value
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

