output "appsync_resolvers_id" {
  description = "Map of id values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appsync_resolvers_api_id" {
  description = "Map of api_id values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "appsync_resolvers_arn" {
  description = "Map of arn values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appsync_resolvers_caching_config" {
  description = "Map of caching_config values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => one(v.caching_config) if v.caching_config != null && length(v.caching_config) > 0 }
}
output "appsync_resolvers_code" {
  description = "Map of code values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.code if v.code != null && length(v.code) > 0 }
}
output "appsync_resolvers_data_source" {
  description = "Map of data_source values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.data_source if v.data_source != null && length(v.data_source) > 0 }
}
output "appsync_resolvers_field" {
  description = "Map of field values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.field if v.field != null && length(v.field) > 0 }
}
output "appsync_resolvers_kind" {
  description = "Map of kind values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "appsync_resolvers_max_batch_size" {
  description = "Map of max_batch_size values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.max_batch_size if v.max_batch_size != null }
}
output "appsync_resolvers_pipeline_config" {
  description = "Map of pipeline_config values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => one(v.pipeline_config) if v.pipeline_config != null && length(v.pipeline_config) > 0 }
}
output "appsync_resolvers_region" {
  description = "Map of region values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appsync_resolvers_request_template" {
  description = "Map of request_template values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.request_template if v.request_template != null && length(v.request_template) > 0 }
}
output "appsync_resolvers_response_template" {
  description = "Map of response_template values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.response_template if v.response_template != null && length(v.response_template) > 0 }
}
output "appsync_resolvers_runtime" {
  description = "Map of runtime values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => one(v.runtime) if v.runtime != null && length(v.runtime) > 0 }
}
output "appsync_resolvers_sync_config" {
  description = "Map of sync_config values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => one(v.sync_config) if v.sync_config != null && length(v.sync_config) > 0 }
}
output "appsync_resolvers_type" {
  description = "Map of type values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = { for k, v in aws_appsync_resolver.appsync_resolvers : k => v.type if v.type != null && length(v.type) > 0 }
}

