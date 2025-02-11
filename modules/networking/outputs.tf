# Creating the outputs for the vpc lab module

output "vpc_id" {

    description = "id for the vpc"
    value = aws_vpc.example_vpn.id

}

output "vpc_cidr" {

    description = "cidr for the vpc"
    value = aws_vpc.example_vpn.cidr_block
  
}

output "vpc_arn" {

    description = "arn for the vpc"
    value = aws_vpc.example_vpn.arn
  
}