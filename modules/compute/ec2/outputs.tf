# This is creating the outputs for the intance - there are alot of options but these are the ones that I have used in the past

output "ec2_instance_id" {

    description = "id for the instance"
    value = aws_instance.example_instance.id
  
}

output "ec2_instance_arn" {

    description = "arn for the instance"
    value = aws_instance.example_instance.arn
  
}