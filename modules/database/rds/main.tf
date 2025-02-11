# This is how you can create an rds instance

# You are going to need a subnet group

resource "aws_db_subnet_group" "example_subnet_group" {

    name = "rds_subnet_group"
    subnet_ids = var.subnet_ids # This is another way that we can handle these subnet object and then just make a list object instead of a list with three different variables
    
}

# These can then get stored in a secret object



resource "aws_db_instance" "example_rds_instance" {

    identifier = "example"
    allocated_storage = 20
    max_allocated_storage = 100 # These are in gbs
    engine = "sqlserver-web"
    engine_version = "14.00.3421.10.v1"
    instance_class = "db.t3.medium"
    username = var.admin_user
    password = var.admin_password
    publicly_accessible = false
    storage_encrypted = true

    db_subnet_group_name = aws_db_subnet_group.example_subnet_group.name

    vpc_security_group_ids = var.database_security_group_id

    depends_on = [ aws_db_subnet_group.example_subnet_group ]

     /*

        There are a lot of other options for this but for testing there are not a ton that are needed besides the networking here are some

        multi_az = true
        backup_retention_period = 32
        maintenance_window= ""
        apply_immediately = false 

        for anymore options please see the doucmentation

     */
  
}