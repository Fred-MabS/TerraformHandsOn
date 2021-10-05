variable "rg_name" {
  type = "string"
  description = "The resource group name"
}

variable "location" {
  type = "string"
  default = "francecentral"
  description = "The region where the resources are created"
}