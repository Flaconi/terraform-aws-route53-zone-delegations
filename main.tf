# Lookup the domain we are creating the delegations in
data "aws_route53_zone" "this" {
  zone_id      = var.zone_id
  private_zone = false
}

# Foreach delegatoin, add the subdomain with the ns records
resource "aws_route53_record" "this" {
  for_each = { for delegation in var.delegations : delegation.sub_domain => delegation }
  zone_id  = var.zone_id
  name     = "${each.value.sub_domain}.${data.aws_route53_zone.this.name}"
  type     = "NS"
  ttl      = var.ttl

  records = each.value.name_servers
}
