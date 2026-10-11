resource "google_data_catalog_tag_template" "data_catalog_tag_templates" {
  for_each = var.data_catalog_tag_templates

  tag_template_id = each.value.tag_template_id
  deletion_policy = each.value.deletion_policy
  display_name    = each.value.display_name
  force_delete    = each.value.force_delete
  project         = each.value.project
  region          = each.value.region

  dynamic "fields" {
    for_each = each.value.fields
    content {
      description  = fields.value.description
      display_name = fields.value.display_name
      field_id     = fields.value.field_id
      is_required  = fields.value.is_required
      order        = fields.value.order
      type {
        dynamic "enum_type" {
          for_each = fields.value.type.enum_type != null ? [fields.value.type.enum_type] : []
          content {
            dynamic "allowed_values" {
              for_each = enum_type.value.allowed_values
              content {
                display_name = allowed_values.value.display_name
              }
            }
          }
        }
        primitive_type = fields.value.type.primitive_type
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

