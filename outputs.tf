output "oncall_label_lookup_id" {
  description = "Map of id values across all oncall_label_lookup, keyed the same as var.oncall_label_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_oncall_label.oncall_label_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oncall_label_lookup_key" {
  description = "Map of key values across all oncall_label_lookup, keyed the same as var.oncall_label_lookup except keys with no key are omitted"
  value       = { for k, v in data.grafana_oncall_label.oncall_label_lookup : k => v.key if v.key != null && length(v.key) > 0 }
}
output "oncall_label_lookup_value" {
  description = "Map of value values across all oncall_label_lookup, keyed the same as var.oncall_label_lookup except keys with no value are omitted"
  value       = { for k, v in data.grafana_oncall_label.oncall_label_lookup : k => v.value if v.value != null && length(v.value) > 0 }
}

