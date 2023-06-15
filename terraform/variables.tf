# variables.tf

variable "project_id" {
  type        = string
  description = "The ID of your GCP project."
}

variable "region" {
  type        = string
  description = "The GCP region to deploy the resource."
}

variable "zone" {
  type        = string
  description = "The GCP zone to deploy the resource."
}
