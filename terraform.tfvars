aws_region                   = "ap-south-1"
instance_name                = "terraform-ec2"
ami_id                       = "ami-0bc7aabcf58d1e02a"
instance_type                = "t3.micro"
subnet_id                    = "subnet-02dc8d98e9f77c11e"
security_group_ids           = ["sg-0c1957427952aa8eb"]
key_name                     = "my-key"
associate_public_ip_address  = true
iam_instance_profile         = null
tags = {
  Environment = "dev"
  Project     = "terraform-cicd"
}
