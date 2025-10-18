terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.85.1"
    }
  }
}

provider "proxmox" {

  endpoint = var.pve_api
  username = var.pve_user
  password = var.pve_secret
  insecure = true
  ssh { agent = true }

}
