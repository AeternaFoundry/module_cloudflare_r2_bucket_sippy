resource "cloudflare_r2_bucket_sippy" "r2_bucket_sippies" {
  for_each = var.r2_bucket_sippies

  account_id   = each.value.account_id
  bucket_name  = each.value.bucket_name
  destination  = each.value.destination
  jurisdiction = each.value.jurisdiction
  source       = each.value.source
}

