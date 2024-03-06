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

variable "calendar_neon_CALENDAR_DATABASE_URL" {
  description = "Pooled Connection URL (pgbouncer) to Neon serverless Postgres production DB"
  type        = string
  sensitive   = true
}

variable "calendar_neon_DIRECT_CALENDAR_DATABASE_URL" {
  description = "Direct connection URL to Neon serverless Postgres production DB"
  type        = string
  sensitive   = true
}

variable "calendar_api_gateway_PARENT_DOMAIN" {
  description = "Parent domain name for calendar project"
  type        = string
}

variable "calendar_lambda_api_admin_NODE_ENV" {
  description = "NODE_ENV for admin API"
  type        = string
  default     = "prod"
}

variable "calendar_lambda_api_admin_CALENDAR_API_ADMIN_RUNTIME" {
  description = "Application runtime - expected value = 'serverless'"
  type        = string
}

variable "calendar_lambda_api_public_NODE_ENV" {
  description = "NODE_ENV for public API"
  type        = string
  default     = "prod"
}

variable "calendar_lambda_api_public_CALENDAR_API_PUBLIC_RUNTIME" {
  description = "Application runtime - expected value = 'serverless'"
  type        = string
}

variable "calendar_lambda_api_public_JWT_SECRET" {
  description = "JWT secret for providing and validating application credentials"
  type        = string
  sensitive   = true
}
