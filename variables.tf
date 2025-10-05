variable "node_name" {
  type        = string
  description = "Proxmox Node"
  default     = "frodo"
}

variable "username" {
  type        = string
  description = "Username"
  default     = "adminuser"
  sensitive   = true
}

variable "secret" {
  type        = string
  description = "secret"
  default     = "adminuser"
  sensitive   = true
}

variable "disk_size" {
  type        = number
  description = "Disk Size"
  default = 30
}

variable "memory" {
  type        = number
  description = "Memory Size"
  default = 1024
}

variable "cpu_cores" {
  type        = number
  description = "Core Count"
  default = 2
}

variable "gateway" {
  type        = string
  description = "Gateway"
  default = "192.168.51.1"
}

variable "ssh_keys" {
  type = string
  description = "SSH Keys"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDcurIuydVUAzucJ7vvtJiWbyemUDlRaRYesCSi/XqtE36GMd8Np4iPalZJ+O0W186D+IEGKgtmrc2tgkZ4klJxujE8GsnajkG2op01iIdFmLlP8O4hdPHGWgwnIMWLgEbm2Ixwf/vCRAoqytqgD4MkaLtxoloeBm3p4hhAsLZc2OEmfo7DO3Ja4F3YbJKtF/iByw6XGIwVSDgr4MQxaWQu3RlN9xl1wT3SAj4Gksu3qlBB2OQQQhGs0OXqfYyU4rpJU9DX0hrBkVaWBRz6DYKtX1F2bV09YkCWHTGtwzl6KUkpkXpMBj+0FARjxWGPyL5UNdO8yD0jS/4IrKYLcVonIZ8Md/oTZdAos4iLkQT+VBstqxG0fZDFMrQJnNA4lfDiRW1Yiu96vj2Wfjn3afaAWcULerVRxHYRtSiYb5Ai7hLEC8xigySXfQwaYAVFZVmAMtJsTE/qHxjMlUaMB6rbx4Vi1fXCDKdRodMvmSVBn1kovN0HOnKZmCw7mQ06kCU= Ronaldo Chan@STORM"
}



