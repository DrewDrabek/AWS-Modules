output "elasticache_redis_id" {

    description = "id for the elasticache cluster"
    value = aws_elasticache_cluster.example_elasticache.id
  
}

output "elasticache_redis_arn" {

    description = "arn for the elasticache cluster"
    value = aws_elasticache_cluster.example_elasticache.arn
  
}