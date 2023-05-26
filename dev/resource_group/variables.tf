variable "region" {
  type        = string
  default     = "Brazil South"
  description = "Region of the world where the resource will be provisioned."
  validation {
    condition     = contains(["brazil south", "south central us", "brazilsouth", "southcentralus"], lower(var.region))
    error_message = "Value must be \"Brazil South\" or \"South Central US\"."
  }
}

variable "tags" {
  type    = map(string)
  description = "Additional tag values."
  default = {}
}

variable "name" {
  type = string
  description = "Name to identify the resource group reason."
  validation {
    condition     = var.name == lower(var.name)
    error_message = "The name most be in lower case."
  }
}

variable "number" {
  type    = number
  default = 1
}

variable "application" {
  type = string
}

variable "cost_center" {
  type = number
}

variable "service" {
  type = string
}

variable "core_business" {
  type = string
}

variable "pci" {
  type = string
}

variable "lgpd" {
  type    = bool
  default = false
}

variable "resource_lock" {
  type    = string
  default = null
  description = "Defines if the resource will receive lock or not."
  validation {
    condition     = contains(["cannotdelete", "read", ""], var.resource_lock)
    error_message = "Value must be \"cannotdelete\" or \"readonly\"."
  }
}

variable "subscription" {
    type = string
}