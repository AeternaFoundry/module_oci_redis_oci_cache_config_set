output "redis_oci_cache_config_sets_id" {
  description = "Map of id values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no id are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_oci_cache_config_sets_compartment_id" {
  description = "Map of compartment_id values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no compartment_id are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "redis_oci_cache_config_sets_configuration_details" {
  description = "Map of configuration_details values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no configuration_details are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => one(v.configuration_details) if v.configuration_details != null && length(v.configuration_details) > 0 }
}
output "redis_oci_cache_config_sets_default_config_set_id" {
  description = "Map of default_config_set_id values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no default_config_set_id are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.default_config_set_id if v.default_config_set_id != null && length(v.default_config_set_id) > 0 }
}
output "redis_oci_cache_config_sets_defined_tags" {
  description = "Map of defined_tags values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no defined_tags are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "redis_oci_cache_config_sets_description" {
  description = "Map of description values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no description are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "redis_oci_cache_config_sets_display_name" {
  description = "Map of display_name values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no display_name are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "redis_oci_cache_config_sets_freeform_tags" {
  description = "Map of freeform_tags values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "redis_oci_cache_config_sets_software_version" {
  description = "Map of software_version values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no software_version are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.software_version if v.software_version != null && length(v.software_version) > 0 }
}
output "redis_oci_cache_config_sets_state" {
  description = "Map of state values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no state are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.state if v.state != null && length(v.state) > 0 }
}
output "redis_oci_cache_config_sets_system_tags" {
  description = "Map of system_tags values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no system_tags are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "redis_oci_cache_config_sets_time_created" {
  description = "Map of time_created values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no time_created are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "redis_oci_cache_config_sets_time_updated" {
  description = "Map of time_updated values across all redis_oci_cache_config_sets, keyed the same as var.redis_oci_cache_config_sets except keys with no time_updated are omitted"
  value       = { for k, v in oci_redis_oci_cache_config_set.redis_oci_cache_config_sets : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

