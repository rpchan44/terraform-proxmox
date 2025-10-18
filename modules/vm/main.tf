resource "proxmox_virtual_environment_file" "user_data_cloud_config" {
  content_type = "snippets"
  datastore_id = "local"
  node_name    = var.node_name

  source_raw {
    data = <<-EOF
    #cloud-config
    timezone: Asia/Manila
    package_update: true
    packages:
      - qemu-guest-agent
      - net-tools
      - curl
    runcmd:
      - systemctl enable qemu-guest-agent
      - systemctl start qemu-guest-agent
      - echo "done" > /tmp/cloud-config.done
    EOF
    file_name = "user-data-cloud-config.yaml"
  }
}

resource "proxmox_virtual_environment_vm" "server" {

  name            = var.instance_name
  node_name       = var.node_name
  stop_on_destroy = true
  
  agent {
    enabled = true
  }
  cpu {
    cores = var.cpu_cores
    type = var.cpu_type
  }

  memory {
    dedicated = var.memory
  }

  initialization {
    user_account {
      username = var.username
      password = var.secret
      keys     = var.ssh_keys != null ? [trimspace(var.ssh_keys)] : []
    }
    dns {
      servers  = var.dns_server
      domain   = var.domain
    }
    ip_config {
      ipv4 {
        address = var.ip_address
        gateway = var.gateway
      }
    }
    user_data_file_id = proxmox_virtual_environment_file.user_data_cloud_config.id
  }

  network_device {
    queues = var.net_queue
    bridge  = var.bridge != null ? var.bridge : "vmbr0"
    vlan_id = var.vlan_id != null ? var.vlan_id : null
  }

  disk {
    datastore_id = "local-lvm"
    file_id      = var.os_release
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = var.disk_size
  }
  tags = var.tags

}
