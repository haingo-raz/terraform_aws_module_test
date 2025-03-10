# Default tags
variable "default_tags" {
  default = {
    "Owner" = "haingo",
    "App"   = "Web"
  }
    type = map(any)
    description = "Default tags to be applied to all AWS resources"
}

# Provision public subnets in custom VPC
variable "public_cidr_blocks" {
    default = ["10.20.0.0/24", "10.20.1.0/24"]
    type = list(string)
    description = "Public Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
    default = "10.20.0.0/16"
    type = string
    description = "VPC to host static web site"
}

# Variable to signal the current environment
variable "env" {
    default = "dev"
    type = string
    description = "Deployment Environment"
}

# Prefix to identify resources
variable "prefix" {
  default     = "Lab4-task2"
  type        = string
  description = "Name prefix"
}



