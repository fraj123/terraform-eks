variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "AWS Account Profile"
  type        = string
}

variable "cluster_name" {
  description = "Cluster Name"
  type        = string
}

variable "environment" {
  description = "Environment Type"
  type        = string
}

variable "workspace" {
  description = "Current workspce"
  type        = string
}
