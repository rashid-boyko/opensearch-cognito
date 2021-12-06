locals {
  cognito_authenticated_role     = file("${path.module}/policies/cognito_authenticated_role.json")
  cognito_authenticated_policy   = file("${path.module}/policies/cognito_authenticated_policy.json")
  cognito_unauthenticated_role   = file("${path.module}/policies/cognito_unauthenticated_role.json")
  cognito_unauthenticated_policy = file("${path.module}/policies/cognito_unauthenticated_policy.json")
}
