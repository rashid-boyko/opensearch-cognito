variable "cognito_domain" {
  default = "codurance-test"
}

variable "name" {
  default = "opensearch-test"
}

variable "opensearch_domain_name" {
  default = "opensearch"
}

variable "opensearch_version" {
  default = "OS_1.0"
}

variable "opensearch_instance" {
  default = "t2.small.elasticsearch"
}

variable "opensearch_instance_count" {
  default = 1
}

variable "opensearch_disk_size" {
  default = 35
}

variable "account_id" {
  default = 570296576441 # To be replaced and stored in terraform.tfvars file, instead of variables.tf
}

variable "region" {
  default = "eu-west-1"
}

variable "sns_topic_arn" {
  default = "opensearch-test"
}
