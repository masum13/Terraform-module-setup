provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
  access_key = var.access_key
  secret_key  = var.secret_key
}

module "instance" {
  source  = "app.terraform.io/masum-practice/instance/vpc"
  version = "1.0.0"

  ami = "ami-0e306788ff2473ccb"
  name = "practice"
  prefix = "module"
}

  variable "access_key" {}
  variable "secret_key" {}
