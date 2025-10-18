locals {
  env_config  = yamldecode(file("./env_config.yml"))
}

locals {
  cloud_image = (
    var.use_remote_state && can(data.terraform_remote_state.installer[0].outputs.cloud_image)
  ) ? try(data.terraform_remote_state.installer[0].outputs.cloud_image, {}) : {
    jammy = "local:iso/jammy-server-cloudimg-amd64.qcow2.img"
    noble = "local:iso/noble-server-cloudimg-amd64.qcow2.img"
  }
}


locals {
  vms = {
    "vm-test-01" = {
      node     = "frodo"
      cidr     = "192.168.51.31/24"
      next-hop = "192.168.51.1"
      os_image = "noble"
      cores    = 2
      ram      = 1024
      vlan     = 51       # this can be override default value set to null
      #bridge  = "vmbr0"  # this can be override if you don't set it default to vmbr0
      tags     = ["linux","app1"]
    }
    "vm-test-02" = {
      node     = "frodo"
      cidr     = "192.168.51.32/24"
      next-hop = "192.168.51.1"
      os_image = "jammy"
      cores    = 2
      ram      = 1024
      vlan     = 51
      tags     = ["linux","app2"]
    }
    "vm-test-03" = {
      node     = "frodo"
      cidr     = "192.168.51.33/24"
      next-hop = "192.168.51.1"
      os_image = "noble"
      cores    = 2
      ram      = 1024
      vlan     = 51
      tags     = ["linux","app3"]
    }
    "vm-test-04" = {
      node     = "frodo"
      cidr     = "192.168.51.34/24"
      next-hop = "192.168.51.1"
      os_image = "jammy"
      cores    = 2
      ram      = 1024
      vlan     = 51
      tags     = ["linux","app4"]
    }
  }
}

