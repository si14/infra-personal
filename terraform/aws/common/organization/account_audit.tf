provider "aws" {
  alias  = "audit"
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::${module.account_audit.id}:role/${var.assume_role_name}"
  }
}

module "account_audit" {
  source = "../../../../terraform-modules/account//"

  name  = "audit"
  email = "sean+aws-audit@lingrino.com"
  tags  = var.tags
}

module "account_audit_base" {
  source = "../../../../terraform-modules/account-base//"

  account_id   = module.account_audit.id
  account_name = module.account_audit.name

  account_id_audit  = module.account_audit.id
  account_id_auth   = module.account_auth.id
  bucket_config_arn = data.terraform_remote_state.account_audit.outputs.bucket_config_arn

  tags = var.tags

  providers = {
    aws = aws.audit
  }
}
