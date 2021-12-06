output "opensearch_endpoint" {
  value = aws_elasticsearch_domain.es.endpoint
}

output "opensearch_arn" {
  value = aws_elasticsearch_domain.es.arn
}
