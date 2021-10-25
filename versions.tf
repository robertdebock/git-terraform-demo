terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  required_version = ">= 0.13"
  backend "remote" {
    organization = "robertdebock"
    workspaces {
      name = "remote-state-demo"
    }
  }
}
