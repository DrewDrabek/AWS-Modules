# Creating the variables for the eks services

variable "role_arn" {

    description = "role arn to use with the eks cluster"
    type = string
  
}

variable "node_role_arn" {

    description = "arn for the node role"
    type = string
  
}

# again these are just for testing this is not something that I think it a good practice for production just for local testing

variable "eks_subnet_1a" {

    description = "subnet 1a to use with the eks cluster"
    type = string

}
variable "eks_subnet_1b" {

    description = "subnet 1b to use with the eks cluster"
    type = string
    
}
variable "eks_subnet_1c" {

    description = "subnet 1c to use with the eks cluster"
    type = string
    
}