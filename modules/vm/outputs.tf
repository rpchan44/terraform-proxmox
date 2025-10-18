output "vm_id" {
  value = proxmox_virtual_environment_vm.server.id
}

output "vm_name" {
  value = proxmox_virtual_environment_vm.server.name
}

output "vm_mac" {
  value = proxmox_virtual_environment_vm.server.network_device[0].mac_address
}

output "node_server_name" {
  value = proxmox_virtual_environment_vm.server.name
}

output "vm_vlan" {
  value = proxmox_virtual_environment_vm.server.network_device[0].vlan_id
}
