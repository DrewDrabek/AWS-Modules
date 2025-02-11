# Creating the vpc for labbing

resource "aws_vpc" "example_vpn" {

    cidr_block = var.cidr_block

    enable_dns_support = true

    enable_dns_hostnames = true

    instance_tenancy = "default"

    enable_network_address_usage_metrics = true
  
}

# create other network items here