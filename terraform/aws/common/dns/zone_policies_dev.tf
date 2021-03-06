module "zone_policies_dev" {
  source = "../../../../terraform-modules/route53-zone-public//"

  domain            = "policies.dev"
  delegation_set_id = aws_route53_delegation_set.lingrino_prod.id

  keybase_record_value           = "keybase-site-verification=qTSL6zK44D8LrYsZtmAuONv78iQa24l-pLDPhLW0oJo"
  google_site_verification_value = "google-site-verification=wtXHJEtev_QdkboJrvlgUfdfiq6lHr7DLsi7x779MGs"
  ses_sns_arn                    = data.terraform_remote_state.account_audit.outputs.sns_alarm_low_priority_arn

  enable_fastmail                      = true
  enable_fastmail_webmail_login_portal = true

  tags = var.tags

  providers = {
    aws = aws.prod
  }
}
