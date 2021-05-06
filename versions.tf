terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  required_version = ">= 0.13"
  # backend "s3" {
  #   skip_credentials_validation = true
  #   skip_metadata_api_check     = true
  #   endpoint                    = "https://ams3.digitaloceanspaces.com"
  #   region                      = "eu-west-1"
  #   bucket                      = "terraform-demo-state"
  #   key                         = "terraform.tfstate"
  # }
}
