#--------------------------------------------------------------
# This module creates an AWS resource
#--------------------------------------------------------------

# Create VPC resource

resource "aws_vpc" "vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = "${var.vpc_tags}"
}

# Set DHCP options

resource "aws_vpc_dhcp_options" "dhcp" {
  domain_name         = "${var.ri_domain}"
  domain_name_servers = ["${var.ri_name_servers}"]
  tags                = "${var.vpc_tags}"
}

resource "aws_vpc_dhcp_options_association" "dns_resolver" {
  vpc_id          = "${aws_vpc.vpc.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.dhcp.id}"
}

# create VGW resource

resource "aws_vpn_gateway" "vgw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags   = "${var.vpc_tags}"
}

# Create IGW resource

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags   = "${var.vpc_tags}"
}
