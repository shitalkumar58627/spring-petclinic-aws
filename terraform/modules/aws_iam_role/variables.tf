variable "name" {
  description = "Base name for the IAM policy and role"
  type        = string
}

variable "description" {
  description = "IAM policy description"
  type        = string
}

variable "actions" {
  description = "List of actions for the IAM policy"
  type        = list(string)
}

variable "resources" {
  description = "List of resource ARNs for the IAM policy"
  type        = list(string)
}
