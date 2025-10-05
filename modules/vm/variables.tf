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
  nullable = true
}
