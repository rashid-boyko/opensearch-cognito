output "opensearch_endpoint" {
  value = aws_elasticsearch_domain.es.endpoint
}

output "opensearch_arn" {
  value = aws_elasticsearch_domain.es.arn
}

output "kibana_sns_role" {
  value = aws_iam_role.kibana_sns_role.arn
}
