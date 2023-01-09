variable "aws_region" {
  description = "Region in which AWS resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "instance_keypair" {
  description = "AWS EC2 Keypair that need to be associated with EC2 instance"
  type        = string
  default     = "terraform-key"
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.micro" #change to this EC2 type if you get error on creating in some AZ
}

variable "instance_type_list" {
  description = "EC2 Instance type"
  type        = list(string)
  default     = ["t3.micro", "t3.small"]
}
variable "instance_type_map" {
  description = "EC2 Instance type"
  type        = map(string)
  default = {
    "dev"  = "t3.micro"
    "qa"   = "t3.small"
    "prod" = "t3.large"
  }
}