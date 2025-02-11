# Creating the redis cache to lab out

resource "aws_elasticache_subnet_group" "redis_subnet_group_example" {

    name = "test-redis"
    subnet_ids = var.redis_subnet_ids
  
}

resource "aws_elasticache_cluster" "example_elasticache" {

    cluster_id = var.redis_name
    engine = "redis"
    node_type = "cache.t3.small"
    num_cache_nodes = 2
    parameter_group_name = "default.redis7"
    engine_version = "7.1"
    port = 6379
    subnet_group_name = aws_elasticache_subnet_group.redis_subnet_group_example.name
    security_group_ids = var.redis_security_group_name

    depends_on = [ aws_elasticache_subnet_group.redis_subnet_group_example ]
  
}