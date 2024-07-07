variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
}
variable "region" {
  description = "The region where all resources will be launched."
  type        = string
  default     = "europe-west2"
}