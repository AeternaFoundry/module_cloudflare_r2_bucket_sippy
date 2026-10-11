variable "r2_bucket_sippies" {
  description = <<EOT
Map of r2_bucket_sippies, attributes below
Required:
    - account_id
    - bucket_name
Optional:
    - destination
    - jurisdiction
    - source
EOT

  type = map(object({
    account_id  = string
    bucket_name = string
    destination = optional(object({
      access_key_id     = optional(string)
      cloud_provider    = optional(string)
      secret_access_key = optional(string)
    }))
    jurisdiction = optional(string)
    source = optional(object({
      access_key_id     = optional(string)
      account_key       = optional(string)
      account_name      = optional(string)
      bucket            = optional(string)
      bucket_url        = optional(string)
      client_email      = optional(string)
      cloud_provider    = optional(string)
      container         = optional(string)
      private_key       = optional(string)
      region            = optional(string)
      sas_token         = optional(string)
      secret_access_key = optional(string)
    }))
  }))
}

