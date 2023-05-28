module "provider" {
  source      = "./modules/provider"
  aws_profile = "default"
  aws_region  = "us-east-2"
}

module "dynamo-db" {
  source     = "./modules/dynamoDB"
  table-name = "user-data"
  hash-key   = "id"
  key-type   = "S"
}
