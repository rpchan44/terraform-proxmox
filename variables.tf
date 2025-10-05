variable "node_name" {
  type        = string
  description = "Proxmox Node"
  default     = "frodo"
}

variable "username" {
  type        = string
  description = "Username"
  sensitive   = true
}

variable "secret" {
  type        = string
  description = "secret"
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
  default=""
}

variable "pve_user" {
  type = string
  description = "Username"
}

variable "pve_secret" {
  type = string
  description = "Password"
}

variable "pve_api" {
  type = string
  description = "API Endpoint"
}
