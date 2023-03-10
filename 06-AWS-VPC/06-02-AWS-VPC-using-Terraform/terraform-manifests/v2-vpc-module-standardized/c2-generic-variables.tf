variable "aws_region" {
  description = "Region in which AWS Resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment variable used as a prefix"
  type        = string
  default     = "dev"
}

variable "business_division" {
  description = "Businesss Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "SAP"
}
