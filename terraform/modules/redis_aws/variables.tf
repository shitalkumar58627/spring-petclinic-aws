variable "cache_name" {}
variable "engine_version" { default = "7.0" }
variable "node_type" { default = "cache.t3.medium" }
variable "capacity" { default = 1 }
variable "subnet_ids" {}
variable "security_group_ids" {}
variable "port" { default = 6379 }
variable "automatic_failover_enabled" { default = true }
variable "transit_encryption_enabled" { default = true }
variable "at_rest_encryption_enabled" { default = true }
variable "maintenance_window" { default = "sun:05:00-sun:09:00" }
variable "tags" { default = {} }
variable "subnet_group_name" {}
variable "parameter_group_name" {}
variable "engine_version_family" { default = "redis7" }