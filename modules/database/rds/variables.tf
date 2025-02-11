variable "subnet_ids" {

    description = "list of subnets to be used with the rds instance"
    type = list(string)

}

variable "admin_user" {
    
    description = "admin username for the database - this needs to be a secret stored somewhere either in aws secrets manager or somewhere else"
    type = string
  
}

variable "admin_password" {

    description = "admin password for the database - this needs to be a secret stored somewhere either in aws secrets manager or somewhere else"
    type = string

}

variable "database_security_group_id" {

    description = "security groups to use with the database"
    type = list(string)
  
}