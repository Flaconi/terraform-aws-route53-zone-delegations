variable "zone_id" {
  type        = string
  description = "AWS Route53 Hosted Zone ID"
}

variable "ttl" {
  type        = number
  description = "TTL for delegation Route53 record in seconds"
  default     = 3600
}

variable "delegations" {
  default     = []
  description = "A list of NS delegations"
  type = list(object({
    sub_domain   = string
    name_servers = list(string)
  }))
}

