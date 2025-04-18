resource "aws_ses_domain_identity" "ses_domain" {
  count  = 1
  domain = var.domain
}

resource "aws_ses_domain_dkim" "ses_domain_dkim" {
  count  = 1
  domain = join("", aws_ses_domain_identity.ses_domain.*.domain)
}

resource "aws_ses_domain_mail_from" "mail_from" {
  count            = 1
  domain           = join("", aws_ses_domain_identity.ses_domain.*.domain)
  mail_from_domain = "mail.${var.domain}"
}
