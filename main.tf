data "elasticstack_elasticsearch_ingest_processor_enrich" "elasticsearch_ingest_processor_enrich_lookup" {
  for_each = var.elasticsearch_ingest_processor_enrich_lookup

  field          = each.value.field
  policy_name    = each.value.policy_name
  target_field   = each.value.target_field
  description    = each.value.description
  if             = each.value.if
  ignore_failure = each.value.ignore_failure
  ignore_missing = each.value.ignore_missing
  max_matches    = each.value.max_matches
  on_failure     = each.value.on_failure
  override       = each.value.override
  shape_relation = each.value.shape_relation
  tag            = each.value.tag
}

