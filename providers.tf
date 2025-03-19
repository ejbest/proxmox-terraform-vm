terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc3"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }

    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.6.0"
    }

  }
}

provider "proxmox" {
  pm_api_url      = local.pm_api_url
  pm_password     = local.proxmox_host_ssh_password
  pm_user         = local.pm_user
  pm_tls_insecure = true
  pm_debug        = true
}
