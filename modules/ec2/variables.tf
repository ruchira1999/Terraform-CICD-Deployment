variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
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
  default     = false
}

variable "iam_instance_profile" {
  description = "IAM instance profile name to attach"
  type        = string
  default     = null
}

variable "user_data" {
  description = "User data script to run on instance launch"
  type        = string
  default     = null
}

variable "monitoring" {
  description = "Enable detailed monitoring"
  type        = bool
  default     = false
}

variable "source_dest_check" {
  description = "Enable source/destination checks"
  type        = bool
  default     = true
}

variable "root_volume_type" {
  description = "Root volume type"
  type        = string
  default     = "gp3"
}

variable "root_volume_size" {
  description = "Root volume size in GiB"
  type        = number
  default     = 8
}

variable "delete_on_termination" {
  description = "Delete root volume on instance termination"
  type        = bool
  default     = true
}

variable "root_volume_encrypted" {
  description = "Encrypt the root volume"
  type        = bool
  default     = false
}

variable "root_volume_kms_key_id" {
  description = "KMS key ID for root volume encryption"
  type        = string
  default     = null
}

variable "tags" {
  description = "Additional tags to apply to the instance"
  type        = map(string)
  default     = {}
}
