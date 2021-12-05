resource "aws_iam_service_linked_role" "es" {
  aws_service_name = "es.amazonaws.com"
}

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

# Kibana IAM
resource "aws_iam_role" "kibana_sns_role" {
  name = "${var.name}_kibana_sns_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "es.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "kibana_sns_policy" {
  name   = "${var.name}_kibana_sns_policy"
  role   = aws_iam_role.kibana_sns_role.arn
  policy = data.aws_iam_policy_document.kibana_sns_policy.json
}
