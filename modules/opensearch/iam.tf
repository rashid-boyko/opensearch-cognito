
resource "aws_iam_policy" "cognito_es_policy" {
  name   = "${var.name}-COGNITO-ACCESS-ES-POLICY"
  policy = data.aws_iam_policy_document.cognito_es_policy.json
}


resource "aws_iam_role" "cognito_es_role" {
  name               = "${var.name}-COGNITO-ACCESS-ES-ROLE"
  assume_role_policy = data.aws_iam_policy_document.es_assume_policy.json

}

resource "aws_iam_role_policy_attachment" "cognito_es_attach" {
  role       = aws_iam_role.cognito_es_role.name
  policy_arn = aws_iam_policy.cognito_es_policy.arn
}

resource "aws_iam_service_linked_role" "es" {
  aws_service_name = "es.amazonaws.com"
}
