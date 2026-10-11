data "grafana_oncall_label" "oncall_label_lookup" {
  for_each = var.oncall_label_lookup

  key   = each.value.key
  value = each.value.value
}

