output "r2_bucket_sippies_account_id" {
  description = "Map of account_id values across all r2_bucket_sippies, keyed the same as var.r2_bucket_sippies except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_r2_bucket_sippy.r2_bucket_sippies : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "r2_bucket_sippies_bucket_name" {
  description = "Map of bucket_name values across all r2_bucket_sippies, keyed the same as var.r2_bucket_sippies except keys with no bucket_name are omitted"
  value       = { for k, v in cloudflare_r2_bucket_sippy.r2_bucket_sippies : k => v.bucket_name if v.bucket_name != null && length(v.bucket_name) > 0 }
}
output "r2_bucket_sippies_destination" {
  description = "Map of destination values across all r2_bucket_sippies, keyed the same as var.r2_bucket_sippies except keys with no destination are omitted"
  value       = { for k, v in cloudflare_r2_bucket_sippy.r2_bucket_sippies : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "r2_bucket_sippies_enabled" {
  description = "Map of enabled values across all r2_bucket_sippies, keyed the same as var.r2_bucket_sippies except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_r2_bucket_sippy.r2_bucket_sippies : k => v.enabled if v.enabled != null }
}
output "r2_bucket_sippies_jurisdiction" {
  description = "Map of jurisdiction values across all r2_bucket_sippies, keyed the same as var.r2_bucket_sippies except keys with no jurisdiction are omitted"
  value       = { for k, v in cloudflare_r2_bucket_sippy.r2_bucket_sippies : k => v.jurisdiction if v.jurisdiction != null && length(v.jurisdiction) > 0 }
}
output "r2_bucket_sippies_source" {
  description = "Map of source values across all r2_bucket_sippies, keyed the same as var.r2_bucket_sippies except keys with no source are omitted"
  value       = { for k, v in cloudflare_r2_bucket_sippy.r2_bucket_sippies : k => v.source if v.source != null && length(v.source) > 0 }
}

