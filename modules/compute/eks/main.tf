# This is an example for creating an eks cluster - the cluster object is what will manage the api plane

resource "aws_eks_cluster" "example_cluster" {
    name = "Example-Eks-Cluster"
    role_arn = var.role_arn # There are requirements for this please see the AWS documentation

    version = "1.31" # I would set this and have a process for managing it if there is a reason to upate then create a process as this will change things

    vpc_config {
      subnet_ids = [ # This also could just be a list object as a single variable instead of like this
        var.eks_subnet_1a,
        var.eks_subnet_1b,
        var.eks_subnet_1c
      ]

      endpoint_private_access = true # internal vpc access
      endpoint_public_access = false # public access
    }
    
    enabled_cluster_log_types = [
        "api", "audit", "autehnticator", "controllerManager", "scheduler" # These are some of the different log types that are available
    ]
    /*
    
    The security group for this is manged by AWS and if you want to access it becomes an output that is available to reference later

    You could make it here as well but there are requirements for it

    */

}

resource "aws_eks_node_group" "example_node_group" {

    cluster_name = aws_eks_cluster.example_cluster.name
    node_group_name = "test"
    node_role_arn = var.node_role_arn
    subnet_ids = [ # This could probably be done in a better way but is mostly like this to show that you can assign multiple subnets and you should for HA
        var.eks_subnet_1a,
        var.eks_subnet_1b,
        var.eks_subnet_1c
      ]

    instance_types = [ "m5.xlarge" ]

    scaling_config {
      desired_size = 1 # This can not be smaller then the scaling config
      max_size = 3
      min_size = 1
    }


}

/*

# you can bootstap the cluster with default addons but you will need to think about how things are accessed and if they are needed - do not just install random things on the cluster

module "eks_blueprint" {

    source = "aws-ia/eks-blueprints-addons/aws"
    version = "1.19.0"
    cluster_name = aws_eks_cluster.example_cluster.name
    cluster_endpoint = aws_eks_cluster.example_cluster.endpoint
    cluster_version = aws_eks_cluster.example_cluster.version
    oidc_provider_arn = "" # this is going to need to be created using other data objects and is not available by default from the eks cluster
  

    enable_argocd = true
    enable_argo_rollouts = true

    # and so on so forth
}

*/

/*

    a cool way to create access to deafult items like the argo cd ui is using load balancers and something like a vpn

    there are also modules for deploying manifest files which could be useful in a bunch of ways

*/