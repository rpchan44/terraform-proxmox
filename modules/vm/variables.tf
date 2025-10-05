variable "instance_name" {
  type        = string
  description = "Instance Name"
}

variable "username" {
  type        = string
  description = "Username"
}

variable "secret" {
  type        = string
  description = "Password"
}

variable "os_release" {
  type        = string
  description = "OS Release"
}

variable "node_name" {
  type        = string
  description = "Server Name"
}

variable "disk_size" {
  type        = number
  description = "Disk Size"
}

variable "bridge" {
  type        = string
  description = "Bridge"
  default     = "vmbr0"
}

variable "vlan_id" {
  type      = string
  default   = "51"
  sensitive = true
}

variable "ip_address" {
  type = string
}

variable "gateway" {
  type = string
}

variable "memory" {
  type = number
}

variable "cpu_cores" {
  type = number
}

variable "ssh_keys" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDcurIuydVUAzucJ7vvtJiWbyemUDlRaRYesCSi/XqtE36GMd8Np4iPalZJ+O0W186D+IEGKgtmrc2tgkZ4klJxujE8GsnajkG2op01iIdFmLlP8O4hdPHGWgwnIMWLgEbm2Ixwf/vCRAoqytqgD4MkaLtxoloeBm3p4hhAsLZc2OEmfo7DO3Ja4F3YbJKtF/iByw6XGIwVSDgr4MQxaWQu3RlN9xl1wT3SAj4Gksu3qlBB2OQQQhGs0OXqfYyU4rpJU9DX0hrBkVaWBRz6DYKtX1F2bV09YkCWHTGtwzl6KUkpkXpMBj+0FARjxWGPyL5UNdO8yD0jS/4IrKYLcVonIZ8Md/oTZdAos4iLkQT+VBstqxG0fZDFMrQJnNA4lfDiRW1Yiu96vj2Wfjn3afaAWcULerVRxHYRtSiYb5Ai7hLEC8xigySXfQwaYAVFZVmAMtJsTE/qHxjMlUaMB6rbx4Vi1fXCDKdRodMvmSVBn1kovN0HOnKZmCw7mQ06kCU= Ronaldo Chan@STORM"
}
