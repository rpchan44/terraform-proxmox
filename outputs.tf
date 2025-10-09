output "image_factory" {
  value = { for k, m in module.image_factory : k => m.image_id }
}

output "launch_instance" {
  value = [for m in module.launch_instance : m.vm_name]
}
