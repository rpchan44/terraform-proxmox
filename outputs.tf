output "images" {
  value = { for k, m in module.download_iso : k => m.image_id }
}

output "guest_name" {
  value = module.launch_vm.vm_name
}
