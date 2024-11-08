variable "rgname" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location/region of the resource group"
}

# Variables for networking module
variable "nsgname" {
  type        = string
  description = "The name of the network security group"
}

variable "vnetname" {
  type        = string
  description = "The name of the virtual network"
}

variable "subnet1name" {
  type        = string
  description = "The name of subnet1"
}

variable "subnet2name" {
  type        = string
  description = "The name of subnet2"
}