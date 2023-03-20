locals {
  common_tags = {
    Environment = var.env
    Billing     = "DevOps-Toolkit"
    Program     = "CCP"
  }
}

variable "location" {
  type    = string
  default = "East Asia"
}

variable "env" {
  type    = string
  description = "An environment we work within"
}

variable "rg_name" {
  type    = string
  description = "Resource group name"
}