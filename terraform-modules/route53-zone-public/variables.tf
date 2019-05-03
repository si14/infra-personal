variable "domain" {
  type        = "string"
  description = "The domain to create the zone for"
}

variable "delegation_set_id" {
  type        = "string"
  description = "The ID of the delegation set to use for the domain"
}

# https://support.google.com/domains/answer/3251241?hl=en
variable "configure_google_domains_email_forwarding" {
  type        = "string"
  description = "Default true. Whether or not to configure google domains email forwarding records for this domain"
  default     = true
}

variable "verify_ses" {
  type        = "string"
  description = "Default true. Whether or not to create a domain in SES and verify it"
  default     = true
}

variable "ses_region" {
  type        = "string"
  description = "Default us-east-1. The region to verify SES in"
  default     = "us-east-1"
}

variable "keybase_record_value" {
  type        = "string"
  description = "An optional keybase verification string, starts with keybase-site-verification="
  default     = ""
}

variable "tags" {
  type        = "map"
  description = "A map of tags to apply to all resources"
}