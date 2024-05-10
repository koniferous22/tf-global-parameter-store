# ┌─────────────────────┐
# │                     │
# │ tf-module variables │
# │                     │
# └─────────────────────┘

variable "environment" {
  description = "Deployment environment (dev|stg|prod)"
  type        = string
}

# ┌───────────────────┐
# │                   │
# │ project variables │
# │                   │
# └───────────────────┘

variable "stopwatch_route53_PARENT_DOMAIN" {
  description = "Parent domain name for calendar project"
  type        = string
}
