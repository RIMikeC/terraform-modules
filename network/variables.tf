#--------------------------------------------------------------
# This module defines the module inputs
#--------------------------------------------------------------

variable "vpc_cidr" {
  description = "CIDR block"
  type        = "string"
}

variable "vpc_tags" {
  description = "VPC metadata"
  type        = "map"
}

variable "ri_domain" {
  description = "Domain"
  type        = "string"
}

variable "ri_name_servers" {
  description = "Domain"
  type        = "list"
}
