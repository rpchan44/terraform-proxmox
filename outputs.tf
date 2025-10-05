output "images" {
  value = { for k, m in module.image_factory : k => m.image_id }
}

output "guest_name" {
  value = [for m in module.launch_instance : m.vm_name]
}
