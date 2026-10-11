output "data_catalog_tag_templates_id" {
  description = "Map of id values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no id are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_catalog_tag_templates_deletion_policy" {
  description = "Map of deletion_policy values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "data_catalog_tag_templates_display_name" {
  description = "Map of display_name values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no display_name are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "data_catalog_tag_templates_fields" {
  description = "Map of fields values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no fields are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.fields if v.fields != null && length(v.fields) > 0 }
}
output "data_catalog_tag_templates_force_delete" {
  description = "Map of force_delete values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no force_delete are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.force_delete if v.force_delete != null }
}
output "data_catalog_tag_templates_name" {
  description = "Map of name values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no name are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_catalog_tag_templates_project" {
  description = "Map of project values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no project are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.project if v.project != null && length(v.project) > 0 }
}
output "data_catalog_tag_templates_region" {
  description = "Map of region values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no region are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "data_catalog_tag_templates_tag_template_id" {
  description = "Map of tag_template_id values across all data_catalog_tag_templates, keyed the same as var.data_catalog_tag_templates except keys with no tag_template_id are omitted"
  value       = { for k, v in google_data_catalog_tag_template.data_catalog_tag_templates : k => v.tag_template_id if v.tag_template_id != null && length(v.tag_template_id) > 0 }
}

