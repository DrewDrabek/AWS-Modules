/*

The goal here is to give an example of what a main COULD look like. I have done it multiple ways and will have what I have done in this file for examples for future use

I do not think just creating resources in the main file is best practice it becomes hard to manage and the thing that I like to do is have 

here is an example for calling a moudule

module "example" {

    source = "./modules/compute/ec2"

    instance_subnet_id = [""]

    windows_instance_security_groups = [""]

  
}

*/