variable "prefix" {
  description = "Prefix for all resources in AWS"
  default     = "raa"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "contact email for tagging resources"
  default     = "sky.sravan@gmail.com"
}
