variable "tags" {
    type = map(string)
    default = {
        "name" = "estu-vm-tf"
        "purpose" = "praktikum"
        "env" = "dev"
    }
}

variable "ami" {
    default = "ami-02ee763250491e04a"
}

variable "key_name" {
    default = "estu_parara"
}

variable "vpc_security_group_ids" {
    default = ["sg-00fcbb95f7e47c354"]
}

variable "subnet_ids" {
    default = "subnet-0312611a1bbfcd70a"
}
