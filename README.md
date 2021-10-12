# Terraform AWS Route53 Alias

This module will create Route53 Alias record

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | AWS Route53 Hosted Zone ID | `string` | n/a | yes |
| <a name="input_delegations"></a> [delegations](#input\_delegations) | A list of NS delegations | <pre>list(object({<br>    sub_domain   = string<br>    name_servers = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | TTL for delegation Route53 record in seconds | `number` | `3600` | no |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
