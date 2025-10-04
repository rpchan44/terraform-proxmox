locals {
  env_config  = yamldecode(file("./env_config.yml"))
  cloud_image = try(data.terraform_remote_state.installer.outputs.images, {})
}

locals {
  # key & value
  vms = {
    "avq-test-01" = "192.168.51.30/24"
    "avq-test-02" = "192.168.51.31/24"
    "avq-test-03" = "192.168.51.32/24"
    "avq-test-04" = "192.168.51.33/24"
  }
}
