resource "github_repository" "site-personal" {
  name         = "site-personal"
  description  = "My personal website"
  homepage_url = "https://lingrino.com"

  default_branch = "master"
  private        = false

  has_wiki   = false
  has_issues = false

  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true

  topics = [
    "html",
    "website",
  ]
}
