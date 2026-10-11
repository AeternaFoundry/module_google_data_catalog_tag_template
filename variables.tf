variable "data_catalog_tag_templates" {
  description = <<EOT
Map of data_catalog_tag_templates, attributes below
Required:
    - tag_template_id
    - fields (block):
        - description (optional)
        - display_name (optional)
        - field_id (required)
        - is_required (optional)
        - order (optional)
        - type (required, block):
            - enum_type (optional, block):
                - allowed_values (required, block):
                    - display_name (required)
            - primitive_type (optional)
Optional:
    - deletion_policy
    - display_name
    - force_delete
    - project
    - region
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    tag_template_id = string
    deletion_policy = optional(string)
    display_name    = optional(string)
    force_delete    = optional(bool)
    project         = optional(string)
    region          = optional(string)
    fields = list(object({
      description  = optional(string)
      display_name = optional(string)
      field_id     = string
      is_required  = optional(bool)
      order        = optional(number)
      type = object({
        enum_type = optional(object({
          allowed_values = list(object({
            display_name = string
          }))
        }))
        primitive_type = optional(string)
      })
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_catalog_tag_templates : (
        length(v.fields) >= 1
      )
    ])
    error_message = "Each fields list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_catalog_tag_templates : (
        alltrue([for item in v.fields : (item.type.enum_type == null || (length(item.type.enum_type.allowed_values) >= 1))])
      )
    ])
    error_message = "Each allowed_values list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

