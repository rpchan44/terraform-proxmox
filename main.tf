module "ip_generator" {
  source = "./modules/ipgenerator"
  subnet = "192.168.51.0/24"
}

module "image_factory" {
  source = "./modules/images"

  for_each    = toset(local.env_config.distribution.images)
  release     = each.value
  server_name = var.node_name

}

module "launch_instance" {

  source = "./modules/vm"

  for_each = local.vms

  os_release    = local.cloud_image[each.value.os_image]
  instance_name = each.key
  vlan_id       = try(each.value.vlan, "")
  bridge        = try(each.value.bridge,"")
  tags          = try(each.value.tags,[])
  ip_address    = each.value.cidr
  #ip_address    = module.ip_generator.usable_ips[index(keys(local.vms), each.key)]
  cpu_cores     = each.value.cores
  memory        = each.value.ram
  username      = var.username
  secret        = var.secret
  disk_size     = var.disk_size
  node_name     = var.node_name
  gateway       = var.gateway
  ssh_keys      = var.ssh_keys


}



