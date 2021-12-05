# Opensearch protected with Cognito

Module to provisioning opensearch domain protected with cognito.

## Main features:

- Provision opensearch domain
- Provision cognito pool to be able to login into opensearch domain
- IAM permissions for opensearch alerting modules, and more. 

# Issues 
sns topic arn needs fixing

```
module.opensearch.aws_iam_role_policy.kibana_sns_policy: Creating...
╷
│ Error: Error putting IAM role policy opensearch-test_kibana_sns_policy: ValidationError: The specified value for roleName is invalid. It must contain only alphanumeric characters and/or the following: +=,.@_-
│       status code: 400, request id: 1073c151-257c-4f3e-8e2b-b5c533058f5d
│ 
│   with module.opensearch.aws_iam_role_policy.kibana_sns_policy,
│   on modules/opensearch/iam.tf line 42, in resource "aws_iam_role_policy" "kibana_sns_policy":
│   42: resource "aws_iam_role_policy" "kibana_sns_policy" {
│ 
```