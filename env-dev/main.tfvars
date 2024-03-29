default_vpc_id             = "vpc-0a1b68119a180ef19"
default_vpc_cidr           = "172.31.0.0/16"
default_vpc_route_table_id = "rtb-0346b1b2beaecb3c8"
zone_id                    = "Z0243240SL2ZOPCKERO1"
env                        = "dev"
ssh_ingress_cidr           = ["172.31.91.23"]
#kms_key_id                 = "arn:aws:kms:us-east-1:596930915629:key/7a9bcba3-7460-41ec-a871-b3f001f3cf29"

tags = {
  company_name  = "ABC Tech"
  business_unit = "Ecommerce"
  project_name  = "robotshop"
  cost_center   = "ecom_rs"
  created_by    = "terraform"
}

vpc = {
  main = {
    cidr = "10.0.0.0/16"
    subnets = {
      public = {
        public1 = { cidr = "10.0.0.0/24", az = "us-east-1a" }
        public2 = { cidr = "10.0.1.0/24", az = "us-east-1b" }
      }
      app = {
        app1 = { cidr = "10.0.2.0/24", az = "us-east-1a" }
        app2 = { cidr = "10.0.3.0/24", az = "us-east-1b" }
      }
      db = {
        db1 = { cidr = "10.0.4.0/24", az = "us-east-1a" }
        db2 = { cidr = "10.0.5.0/24", az = "us-east-1b" }
      }
    }
  }
}

alb = {
  public = {
    internal        = false
    lb_type         = "application"
    sg_ingress_cidr = ["0.0.0.0/0"]
    sg_port         = 443
  }

  private = {
    internal        = true
    lb_type         = "application"
    sg_ingress_cidr = ["172.31.0.0/16", "10.0.0.0/16"]
    sg_port         = 80
  }
}

docdb = {
  main = {
    backup_retention_period = 5
    preferred_backup_window = "07:00-09:00"
    skip_final_snapshot     = true
    engine_version          = "4.0.0"
    engine_family           = "docdb4.0"
    instance_count          = 1
    instance_class          = "db.t3.medium"
  }
}

rds = {
  main = {
    rds_type                = "mysql"
    db_port                 = 3306
    engine_family           = "aurora-mysql5.7"
    engine                  = "aurora-mysql"
    engine_version          = "5.7.mysql_aurora.2.11.3"
    backup_retention_period = 5
    preferred_backup_window = "07:00-09:00"
    skip_final_snapshot     = true
    instance_count          = 1
    instance_class          = "db.t3.small"
  }
}

elasticache = {
  main = {
    elasticache_type = "redis"
    family           = "redis6.x"
    port             = 6379
    engine           = "redis"
    node_type        = "cache.t3.micro"
    num_cache_nodes  = 1
    engine_version   = "6.2"
  }
}

rabbitmq = {
  main = {
    instance_type = "t3.small"
  }
}

apps = {
  frontend = {
    instance_type = "t3.micro"
  }
}
