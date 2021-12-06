resource "aws_iam_role" "authenticated" {
  name               = "${var.name}-AUTH-ROLE"
  assume_role_policy = local.cognito_authenticated_role
}

resource "aws_iam_role_policy" "authenticated" {
  name   = "authenticated_policy"
  role   = aws_iam_role.authenticated.id
  policy = local.cognito_authenticated_policy
}

resource "aws_iam_role" "unauthenticated" {
  name               = "${var.name}-UNAUTH-ROLE"
  assume_role_policy = local.cognito_unauthenticated_role
}

resource "aws_iam_role_policy" "unauthenticated" {
  name   = "unauthenticated_policy"
  role   = aws_iam_role.unauthenticated.id
  policy = local.cognito_unauthenticated_policy
}

resource "aws_cognito_identity_pool_roles_attachment" "identity_pool" {
  identity_pool_id = aws_cognito_identity_pool.identity_pool.id
  roles = {
    "authenticated"   = aws_iam_role.authenticated.arn
    "unauthenticated" = aws_iam_role.unauthenticated.arn
  }
}
