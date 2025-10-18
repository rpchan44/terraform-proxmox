output "network" {
  value = local.cidr_network
}

output "broadcast" {
  value = local.cidr_broadcast
}

output "gateway" {
  value = local.usable_ips[0]
}

output "usable_ips" {
  value = local.usable_ips
}

