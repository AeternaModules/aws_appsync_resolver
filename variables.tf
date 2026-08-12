variable "appsync_resolvers" {
  description = <<EOT
Map of appsync_resolvers, attributes below
Required:
    - api_id
    - field
    - type
Optional:
    - code
    - data_source
    - kind
    - max_batch_size
    - region
    - request_template
    - response_template
    - caching_config (block):
        - caching_keys (optional)
        - ttl (optional)
    - pipeline_config (block):
        - functions (optional)
    - runtime (block):
        - name (required)
        - runtime_version (required)
    - sync_config (block):
        - conflict_detection (optional)
        - conflict_handler (optional)
        - lambda_conflict_handler_config (optional, block):
            - lambda_conflict_handler_arn (optional)
EOT

  type = map(object({
    api_id            = string
    field             = string
    type              = string
    code              = optional(string)
    data_source       = optional(string)
    kind              = optional(string)
    max_batch_size    = optional(number)
    region            = optional(string)
    request_template  = optional(string)
    response_template = optional(string)
    caching_config = optional(object({
      caching_keys = optional(set(string))
      ttl          = optional(number)
    }))
    pipeline_config = optional(object({
      functions = optional(list(string))
    }))
    runtime = optional(object({
      name            = string
      runtime_version = string
    }))
    sync_config = optional(object({
      conflict_detection = optional(string)
      conflict_handler   = optional(string)
      lambda_conflict_handler_config = optional(object({
        lambda_conflict_handler_arn = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appsync_resolvers : (
        v.caching_config == null || (v.caching_config.ttl == null || (v.caching_config.ttl >= 1 && v.caching_config.ttl <= 3600))
      )
    ])
    error_message = "must be between 1 and 3600"
  }
  validation {
    condition = alltrue([
      for k, v in var.appsync_resolvers : (
        v.code == null || (length(v.code) >= 1 && length(v.code) <= 32768)
      )
    ])
    error_message = "must be between 1 and 32768 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appsync_resolvers : (
        v.max_batch_size == null || (v.max_batch_size >= 0 && v.max_batch_size <= 2000)
      )
    ])
    error_message = "must be between 0 and 2000"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

