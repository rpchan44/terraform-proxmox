locals {
  # Calculate network and broadcast boundaries
  cidr_network   = cidrhost(var.subnet, 0)
  cidr_broadcast = cidrhost(var.subnet, -1)

  # Get the number of available hosts in subnet (excluding network + broadcast)
  total_ips = pow(2, 32 - tonumber(split("/", var.subnet)[1])) - 2

  # Generate usable host IPs
  usable_ips = [
    for i in range(1, local.total_ips + 1) : cidrhost(var.subnet, i)
  ]
}
