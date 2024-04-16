variable "env" {
  description = "Env Name"
  type = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
  description = "A list of availability zones in the region"
  type = list(string)
}

variable "public_subnets" {
  description = "CIDR blocks for the public subnets"
  type = list(string)
}

variable "private_subnets" {
  description = "CIDR blocks for the public subnets"
  type = list(string)
}

variable "private_subnet_tags" {
  description = "Private subnet tags"
  type = map(any)
}

variable "public_subnet_tags" {
  description = "public_subnet_tags"
  type = map(any)
}