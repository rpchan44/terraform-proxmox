module "download_iso" {
  source = "./modules/images"

  for_each    = toset(local.env_config.distribution.images)
  release     = each.value
  server_name = var.node_name

}

module "launch_vm" {
  source = "./modules/vm"

  for_each = local.vms

  os_release    = local.cloud_image["${each.value.os_image}"]
  instance_name = each.key
  ip_address    = each.value.cidr
  cpu_cores     = each.value.cores
  memory        = each.value.ram
  username      = var.username
  secret        = var.secret
  disk_size     = var.disk_size
  node_name     = var.node_name
  gateway       = var.gateway

}



