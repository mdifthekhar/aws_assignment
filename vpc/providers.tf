# Cloud service provider info, AWS 
provider "aws" {
  region  = var.region
  version = "~> 2.8"
  profile = "testapp"
}

# Use data sources allow configuration to be
# generic for any region
data "aws_region" "current" {}
data "aws_availability_zones" "available" {}