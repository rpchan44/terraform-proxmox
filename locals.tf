locals {
  env_config  = yamldecode(file("./env_config.yml"))
  cloud_image = try(data.terraform_remote_state.installer.outputs.images, {})
}

locals {
  vms = {
    "avq-test-01" = {
      cidr     = "192.168.51.30/24"
      os_image = "noble"
    }
    "avq-test-02" = {
      cidr     = "192.168.51.31/24"
      os_image = "jammy"
    }
    "avq-test-03" = {
      cidr     = "192.168.51.32/24"
      os_image = "noble"
    }
  }
}

