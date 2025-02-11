# creating the outputs for the eks cluster

output "eks_cluster_arn" {

    description = "arn for the eks cluster"
    value = aws_eks_cluster.example_cluster.arn
  
}

output "eks_api_plane_security_group_id" {

    description = "id for the managed security group that is made"
    value = aws_eks_cluster.example_cluster.vpc_config[0].security_group_ids
  
}