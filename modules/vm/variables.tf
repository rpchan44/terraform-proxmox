variable "instance_name" {
  type        = string
  description = "Instance Name"
  default     = "frodo"
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
  default     = "noble"
}

variable "node_name" {
  type        = string
  description = "Server Name"
}

variable "disk_size" {
  type        = number
  description = "Disk Size"
  default     = 20
}

variable "bridge" {
  type        = string
  description = "Bridge"
  default     = "vmbr0"
}

variable "vlan_id" {
  type      = number
  sensitive = true
}

variable "ip_address" {
  type = string
}

variable "gateway" {
  type = string
  default = "192.168.51.1"
}

variable "memory" {
  type = number
  default = 1024
}

variable "cpu_cores" {
  type = number
  default = 2
}

variable "ssh_keys" {
  type = string
  default=""
}

variable "tags" {
  type = list(string)
  default = []
}

variable "domain" {
  type = string
  default = "infradead.internal"
}

variable "dns_server" {
  type = list(string)
  default = []
}

variable "cpu_type" {
  type = string
  default = "host"
}

variable "net_queue" {
  type = number
  default = 0
}
