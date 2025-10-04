locals {
  env_config  = yamldecode(file("./env_config.yml"))
  cloud_image = try(data.terraform_remote_state.installer.outputs.images, {})
}


