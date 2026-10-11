variable "oncall_label_lookup" {
  description = <<EOT
Map of oncall_label_lookup, attributes below
Required:
    - key
    - value
EOT

  type = map(object({
    key   = string
    value = string
  }))
}

