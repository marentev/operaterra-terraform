variable "rgname" {
  type        = string
  description = "The name of the resource group"
  default     = "rg-mt"
}

variable "location" {
  type        = string
  description = "The location/region of the resource group"
  default     = "westeurope"
}

# Variables for networking module
variable "nsgname" {
  type        = string
  description = "The name of the network security group"
  default = "nsg-mt"
}

variable "vnetname" {
  type        = string
  description = "The name of the virtual network"
  default = "vnet-mt"
}

variable "subnet1name" {
  type        = string
  description = "The name of subnet1"
  default = "subnet1-mt"
}

variable "subnet2name" {
  type        = string
  description = "The name of subnet2"
  default = "subnet2-mt"
}