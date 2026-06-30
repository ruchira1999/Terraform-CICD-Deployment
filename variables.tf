variable "aws_region" {
  description = "AWS region for the example"
  type        = string
  default     = "ap-south-1"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = null
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-0bc7aabcf58d1e02a"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "List of security group IDs attached to the instance"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "Name of the SSH key pair to associate"
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "Whether to assign a public IP address"
  type        = bool
  default     = true
}

variable "iam_instance_profile" {
  description = "IAM instance profile name to attach to the EC2 instance"
  type        = string
  default     = null
}

variable "tags" {
  description = "Additional tags to apply to the instance"
  type        = map(string)
  default = {}
}
