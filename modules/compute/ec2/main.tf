# This is an example of creating a windows instance - it is relatively close for the linux instance as well - the ami is the most important part - either use a custom or AWS image

# This creates a windows instance

# This could be used with count object to create multiple at once if needed or it could be used with 

resource "aws_instance" "example_instance" {

    ami = var.windows_instance_ami # example "ami-05b1a50db6798f63cb"
    instance_type = var.instance_type # example t3.large
    subnet_id = var.instance_subnet_id
    vpc_security_group_ids = var.windows_instance_security_groups

    monitoring = true
    disable_api_stop = true
    disable_api_termination = true

    associate_public_ip_address = false # Set to true if this need to be publically accessible

    # This sets the root storage that is attached to the instance

    /*

    you can also specify this as well but if not aws will make it for you

    network_interface {
      network_interface_id = 
      device_index = 
    }

    you can also create a user data file to use here for start up options - this is not best practice instead if you need to do something like this make an image and the reference it 

    user_data = IF YOU NEED TO DO THIS PLEASE SEE THE DOUCMENTATION AS THIS IS DIFFERENT DEPENDING

    */

    
    root_block_device {

      volume_size = 100 # This is in gbs
      volume_type = "gp3" # General purpose
      delete_on_termination = true
      encrypted = true

    }
}

/*

    This is if you want to use a key pair - there are a lot of alternatives to using something like this - either ssm or domain joining the instance so this is not something that I like to use
    
    key_name = var.key_name  This is going to need to reference a key for getting the admin login and so on - either create one on the console or create one using terraform

  
}

# This is an example of making a key pair

resource "aws_key_pair" "example_key_pair" {

    key_name = "example_key"
    
    # The key information here is the example from the docs

    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
  
}

*/