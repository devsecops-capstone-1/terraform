variable "acr_name" {
  description = "Globally unique ACR name (5-50 lowercase letters and digits)."
  type        = string
  default     = "acrdevsecopscapstone"
}

variable "acr_sku" {
  description = "ACR SKU."
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Tags applied to all resources."
  type        = map(string)
  default = {
    project    = "devsecops-capstone-1"
    managed_by = "terraform"
  }
}
