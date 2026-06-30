resource "aws_iam_instance_profile" "this" {
  count = var.iam_instance_profile == null ? 1 : 0
  name  = "${var.name}-profile"
  role  = "instanceRole"
}

resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids     = var.security_group_ids
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile        = var.iam_instance_profile != null ? var.iam_instance_profile : aws_iam_instance_profile.this[0].name
  user_data                   = var.user_data
  monitoring                  = var.monitoring
  source_dest_check           = var.source_dest_check

  root_block_device {
    volume_type           = var.root_volume_type
    volume_size           = var.root_volume_size
    delete_on_termination = var.delete_on_termination
    encrypted             = var.root_volume_encrypted
    kms_key_id            = var.root_volume_kms_key_id
  }

  tags = merge(var.tags, {
    Name = var.name
  })
}


