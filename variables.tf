variable "image" {
  description = "The image to use."
  default     = "ubuntu-20-04-x64"
  type        = string
}

variable "region" {
  description = "The region to deploy to."
  default     = "ams3"
  type        = string
}

variable "size" {
  description = "The size of the droplet, either \"small\", \"medium\" or \"large\"."
  default     = "small"
  type        = string
  validation {
    condition     = var.size == "small" || var.size == "medium" || var.size == "large"
    error_message = "Please specify a droplet size of: \"small\", \"medium\" or \"large\"."
  }
}
