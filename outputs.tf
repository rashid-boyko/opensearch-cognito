output "opensearch_endpoint" {
  value = module.opensearch.opensearch_endpoint
}

output "opensearch_arn" {
  value = module.opensearch.opensearch_arn
}


output "cognito_user_pool_id" {
  value = module.cognito.user_pool_id
}

output "cognito_identity_pool_id" {
  value = module.cognito.identity_pool_id
}

output "cognito_app_client_id" {
  value = module.cognito.app_client_id
}

# output "kibana_sns_role" {
#   value = module.opensearch.kibana_sns_role
# }
