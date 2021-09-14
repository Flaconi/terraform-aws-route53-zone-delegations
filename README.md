# Terraform AWS Route53 Alias

This module will create Route53 Alias record

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 3 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| zone\_id | AWS Route53 Hosted Zone ID | `string` | n/a | yes |
| delegations | A list of NS delegations | <pre>list(object({<br>    sub_domain   = string<br>    name_servers = list(string)<br>  }))</pre> | `[]` | no |
| ttl | TTL for delegation Route53 record in seconds | `number` | `3600` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
