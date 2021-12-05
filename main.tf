module "cognito" {
  source         = "./modules/cognito"
  
  name           = var.name
  region         = var.region
  cognito_domain = var.cognito_domain
}

module "opensearch" {
  source                    = "./modules/opensearch"
  
  name                      = var.name
  region                    = var.region
  opensearch_domain_name    = var.opensearch_domain_name
  opensearch_version        = var.opensearch_version
  opensearch_instance       = var.opensearch_instance
  opensearch_instance_count = var.opensearch_instance_count
  opensearch_disk_size      = var.opensearch_disk_size
  sns_topic_arn             = var.sns_topic_arn
  cognito_domain            = var.cognito_domain
  access_policies           = local.access_policies
  cognito_user_pool_id      = local.cognito_user_pool_id
  cognito_identity_pool_id  = local.cognito_identity_pool_id
}
