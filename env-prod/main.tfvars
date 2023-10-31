components = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.small"
    }
    cart = {
      name          = "cart"
      instance_type = "t3.small"
    }
    mongodb = {
      name          = "mongodb"
      instance_type = "t3.small"
    }
    catalogue = {
      name          = "catalogue"
      instance_type = "t3.small"
    }
    user = {
      name          = "user"
      instance_type = "t3.small"
    }
    redis = {
      name          = "redis"
      instance_type = "t3.small"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }
    payment = {
      name          = "payment"
      instance_type = "t3.small"
    }
    shipping = {
      name          = "shipping"
      instance_type = "t3.small"
    }
    rabbitmq = {
      name          = "rabbitmq"
      instance_type = "t3.small"
    }
  }
security_groups = ["sg-02b5746c2dc0c1fad"]
zone_id = "Z0243240SL2ZOPCKERO1"