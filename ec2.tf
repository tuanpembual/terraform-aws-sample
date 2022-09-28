resource "aws_instance" "devops_testing" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_ids
  associate_public_ip_address = var.associate_public_ip_address
  count = var.instance_count
  
  root_block_device {
    volume_type           = var.volume_type
    volume_size           = var.root_volume_size
    delete_on_termination = var.delete_on_termination
  }

  tags = {
    Name = var.tags["name"]
    Purpose = var.tags["purpose"]
    Env = var.tags["env"]
  }

  volume_tags = {
    Name = var.tags["name"]
    Purpose = var.tags["purpose"]
    Env = var.tags["env"]
  }
}
