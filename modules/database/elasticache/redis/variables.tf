variable "redis_subnet_ids" {

    description = "ids for the subnets that are going to be used with the redis instance"
    type = list(string)
  
}

variable "redis_name" {

    description = "name for the redis instance"
    type = string
  
}

variable "redis_security_group_name" {

    description = "security groups to be used with the redis instance"
    type = list(string)
  
}