variable "region" {
  default     = "us-east-1"
  description = "The default AZ to provision to for the provider"
}

variable "vpc_cidr_block" {
  default     = "172.16.0.0/16"
  description = "The default CIDR block for the VPC demo"
}

variable "subnet_cidr_block" {
  default     = "172.16.10.0/24"
  description = "The default CIDR block for the subnet demo"
}

variable "subnet_availability_zone" {
  default     = "us-east-1a"
  description = "The default AZ for the subnet"
}
