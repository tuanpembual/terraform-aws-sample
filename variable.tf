variable "availability_zone" {
    default = "ap-southeast-1a"
}

# EC2
variable "instance_type" {
    default = "t3.medium"
}

variable "root_volume_size" {
    default = 8 
}

variable "volume_type" {
    default = "gp2"
}

variable "instance_count" {
    default = 1
}

variable "delete_on_termination" {
    default = true
}

variable "associate_public_ip_address" {
    default = true
}

# RDS
variable "db_instance" {
  default = "db.t2.micro"
}

variable "rds_engine" {
  default = "mysql"
}

variable "rds_engine_version" {
  default = "5.7"
}

variable "rds_identifier" {
  default = "terraformrds"
}

variable "rds_db_name" {
  default = "terraformrds"
}

variable "rds_db_username" {
  default = "devopscilsy"
}

variable "rds_db_password" {
  default = "1234567890"
}

variable "rds_parameter_group_name" {
  default = "default.mysql5.7"
}
