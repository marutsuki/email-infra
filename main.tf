provider "aws" {
  // Australia/Sydney
  region = "ap-southeast-2"
}

module "mail" {
  source = "./modules/mail"
  domain = "marutsuki.io"
}
