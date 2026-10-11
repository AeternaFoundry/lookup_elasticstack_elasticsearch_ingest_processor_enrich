variable "elasticsearch_ingest_processor_enrich_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_enrich_lookup, attributes below
Required:
    - field
    - policy_name
    - target_field
Optional:
    - description
    - if
    - ignore_failure
    - ignore_missing
    - max_matches
    - on_failure
    - override
    - shape_relation
    - tag
EOT

  type = map(object({
    field          = string
    policy_name    = string
    target_field   = string
    description    = optional(string)
    if             = optional(string)
    ignore_failure = optional(bool)
    ignore_missing = optional(bool)
    max_matches    = optional(number)
    on_failure     = optional(list(string))
    override       = optional(bool)
    shape_relation = optional(string)
    tag            = optional(string)
  }))
}

