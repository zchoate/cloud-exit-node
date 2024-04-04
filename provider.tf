terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2"
    }
    tailscale = {
      source  = "tailscale/tailscale"
      version = "~> 0.15"
    }
  }

  backend "azurerm" {
    use_oidc  = true
  }
}

provider "digitalocean" {
}

provider "tailscale" {
}