variable "subscription_id" {
  type        = string
  description = "The Azure subscription ID."
}
variable "create_resource_group" {
  type        = bool
  description = "Specify if you want to create a resource group. Accepted values are true or false."
}
variable "location" {
  type        = string
  description = "The Azure region where the resource group should get created. e.g. East US, West US 2, Central US, etc."
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group that would be used, it will be created if 'create_resource_group' is set as true."
}
variable "administrator_login_password_90e0852d-ec7b-54b7-b540-8285e85c22b3" {
  description = "The password for the postgresql server."
  type        = string
  nullable    = false
  sensitive   = true
}

variable "administrator_login_password_9b3eebdd-882a-526b-9ee9-33ecd1fc9edf" {
  description = "The password for the postgresql server."
  type        = string
  nullable    = false
  sensitive   = true
}

