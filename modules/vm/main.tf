resource "proxmox_virtual_environment_vm" "server" {

  name      = var.instance_name
  node_name = var.node_name

  stop_on_destroy = true

  cpu {
    cores = var.cpu_cores
  }

  memory {
    dedicated = var.memory
  }

  initialization {
    user_account {
      username = var.username
      password = var.secret
    }
    ip_config {
      ipv4 {
        address = var.ip_address
        gateway = var.gateway
      }
    }

  }

  network_device {
    bridge  = var.bridge
    vlan_id = var.vlan_id
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = var.os_release
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = var.disk_size
  }


}
