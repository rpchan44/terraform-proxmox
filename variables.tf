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
}

variable "memory" {
  type        = number
  description = "Memory Size"
}

variable "cpu_cores" {
  type        = number
  description = "Core Count"
}


