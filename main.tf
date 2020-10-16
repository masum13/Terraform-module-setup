provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
}

module "instance" {
  source  = "app.terraform.io/masum-practice/instance/vpc"
  version = "1.0.0"

  ami = "ami-0e306788ff2473ccb"
  name = "practice"
  prefix = "module"
}
