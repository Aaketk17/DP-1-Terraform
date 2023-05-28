module "dynamodb_table" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name     = var.table-name
  hash_key = var.hash-key

  attributes = [
    {
      name = var.hash-key
      type = var.key-type
    }
  ]
}
