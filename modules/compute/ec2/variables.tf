# This is creating the example ec2 instance variables

variable "windows_instance_ami" {

    description = "ami to use with the instance"
    type = string
    
    default = "ami-05b1a50d6798f63cb"
}

variable "instance_type" {

    description = "instance type to use for the windows instance"
    type = string

    default = "t3.large"
  
}

variable "instance_subnet_id" {

    description = "subnet id for the instance - if the instance is meant to be public make sure that it can be accessed via the networking"
    type = string
    
}

variable "windows_instance_security_groups" {

    description = "id for the security groups that are going to be assigned - you can assign more than one security group with the instance and that will apply all of the rules for both to the instance"
    type = list(string)
  
}