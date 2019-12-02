variable "zone_id" {
  type = string
}

variable "ttl" {
  type = string
}

variable "delegations" {
  default     = []
  description = "A list of NS delegations"
  type = list(object({
    sub_domain   = string
    name_servers = list(string)
  }))
}

