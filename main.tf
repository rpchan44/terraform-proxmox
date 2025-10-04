module "download_iso" {
  source = "./modules/images"

  for_each    = toset(local.env_config.distribution.images)
  release     = each.value
  server_name = var.node_name
}

module "launch_vm" {
  source = "./modules/vm"

  for_each = local.vms

  instance_name = each.key
  os_release    = local.cloud_image["noble"]
  memory        = var.memory
  cpu_cores     = var.cpu_cores
  username      = var.username
  secret        = var.secret
  disk_size     = var.disk_size
  node_name     = var.node_name
  ip_address    = each.value
  gateway       = "192.168.51.1"

}



