variable "region" {
  description = "The target region"
  default = ""
}
variable "environment" {
  description = "The environment, prod, nonprod, integration etc"
  default = ""
}
variable "user-name" {
  description = "The environment, prod, nonprod, integration etc"
  default = ""
}
variable "policy-description" {
  description = "The environment, prod, nonprod, integration etc"
  default = ""
}
variable "acceskeycreate" {
  description = "The environment, prod, nonprod, integration etc"
  default = ""
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type = "map"
  default     = {}
}

