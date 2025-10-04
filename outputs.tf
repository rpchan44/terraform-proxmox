output "images" {
  value = { for k, m in module.download_iso : k => m.image_id }
}

output "guest_name" {
  value = [for m in module.launch_vm : m.vm_name]
}
