module "image_factory" {
  source = "./modules/images"

  for_each    = toset(local.env_config.distribution.images)
  release     = each.value
  server_name = var.node_name

}

module "launch_instance" {

  source = "./modules/vm"

  for_each = local.vms

  node_name     = each.value.node
  os_release    = local.cloud_image[each.value.os_image]
  instance_name = each.key
  vlan_id       = try(each.value.vlan, "")
  bridge        = try(each.value.bridge,"")
  tags          = try(each.value.tags,[])
  ip_address    = each.value.cidr
  gateway       = each.value.next-hop
  cpu_cores     = each.value.cores
  memory        = each.value.ram
  username      = var.username
  secret        = var.secret
  disk_size     = var.disk_size
  ssh_keys      = var.ssh_keys
  depends_on    = [module.image_factory]

}



