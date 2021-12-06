variable "cognito_domain" {
  type    = string
  default = "codurance-test"
}

variable "name" {
  type    = string
  default = "opensearch-test"
}

variable "opensearch_domain_name" {
  type    = string
  default = "opensearch"
}

variable "opensearch_version" {
  type    = string
  default = "OpenSearch_1.0"
}

variable "opensearch_instance" {
  type    = string
  default = "t2.small.elasticsearch"
}

variable "opensearch_instance_count" {
  type    = number
  default = 1
}

variable "opensearch_ebs_volume_size" {
  type    = number
  default = 35
}

variable "opensearch_ebs_volume_type" {
  type    = string
  default = "standard"
}
variable "region" {
  default = "eu-west-1"
}
