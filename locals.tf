locals {
  env_config  = yamldecode(file("./env_config.yml"))
  cloud_image = try(lookup(data.terraform_remote_state.installer.outputs, "image_factory", {}), {})
}

locals {
  vms = {
    "vm-test-01" = {
      cidr     = "192.168.51.31/24"
      os_image = "noble"
      cores    = 2
      ram      = 1024
      vlan     = 51       # this can be override default value set to null
      #bridge  = "vmbr0"  # this can be override if you don't set it default to vmbr0
      tags     = ["noble"]
    }
    "vm-test-02" = {
      cidr     = "192.168.51.32/24"
      os_image = "jammy"
      cores    = 2
      ram      = 1024
      vlan     = 51
      tags     = ["jammy"]
    }
    "vm-test-03" = {
      cidr     = "192.168.51.33/24"
      os_image = "noble"
      cores    = 2
      ram      = 1024
      vlan     = 51
    }
    "vm-test-04" = {
      cidr     = "192.168.51.34/24"
      os_image = "noble"
      cores    = 2
      ram      = 1024
      vlan     = 51
    }
  }
}

