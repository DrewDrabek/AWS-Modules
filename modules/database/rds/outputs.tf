# Creating the outputs for the rds instance

output "rds_instance_name" {

    description = "name for the rds instance"
    value = aws_db_instance.example_rds_instance.db_name
  
}

output "rds_instance_id" {

    description = "id for the rds instance"
    value = aws_db_instance.example_rds_instance.id
  
}

output "rds_instance_arn" {

    description = "arn for the rds instance"
    value = aws_db_instance.example_rds_instance.arn
  
}