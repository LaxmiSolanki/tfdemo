variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR Block"
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type = string
  description = "instance tenancy option for the vpc"
  default = "default"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone"
  default     = "ap-south-1"
}