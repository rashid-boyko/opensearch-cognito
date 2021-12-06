locals {
  opensearch_endpoint      = module.opensearch.opensearch_endpoint
  opensearch_arn           = module.opensearch.opensearch_arn
  access_policies          = data.aws_iam_policy_document.es_access_policy.json
  cognito_user_pool_id     = lookup(module.cognito.cognito_map, "user_pool")
  cognito_identity_pool_id = lookup(module.cognito.cognito_map, "identity_pool")
}
