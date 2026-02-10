variable "rg_name_prefix" {
  type        = string
  description = "The prefix for the resource group name"
  default     = "rg"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "canadacentral"
}

variable "vnet_name_prefix" {
  type        = string
  description = "The prefix for the VNet name"
  default     = "vnet"
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the VNet"
  default     = ["10.0.0.0/16"]
}