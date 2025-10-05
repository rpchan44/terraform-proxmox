locals {
  env_config  = yamldecode(file("./env_config.yml"))
  cloud_image = try(data.terraform_remote_state.installer.outputs.images, {})
}

locals {
  vms = {
    "avq-test-01" = {
      cidr     = "192.168.51.30/24"
      os_image = "noble"
      cores    = 1
      ram      = 1024
    }
    "avq-test-02" = {
      cidr     = "192.168.51.31/24"
      os_image = "jammy"
      cores    = 1
      ram      = 1024
    }
    "avq-test-03" = {
      cidr     = "192.168.51.32/24"
      os_image = "noble"
      cores    = 1
      ram      = 1024
    }
    "avq-test-04" = {
      cidr     = "192.168.51.33/24"
      os_image = "noble"
      cores    = 2
      ram      = 1024
    }
  }
}

