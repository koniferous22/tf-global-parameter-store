variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev|stg|prod)"
  type        = string
}

variable "default_resource_tags" {
  type        = map(string)
  description = "Default tags assigned to provisioned resources"
}

# ┌─────────────────────────────┐
# │                             │
# │ 'calendar-from-cli' project │
# │                             │
# └─────────────────────────────┘

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

variable "calendar_route53_PARENT_DOMAIN" {
  description = "Parent domain name for calendar project"
  type        = string
}

# ┌─────────────────────┐
# │                     │
# │ 'stopwatch' project │
# │                     │
# └─────────────────────┘

variable "stopwatch_route53_PARENT_DOMAIN" {
  description = "Parent domain name for stopwatch project"
  type        = string
}

# ┌─────────────────────────────┐
# │                             │
# │ 'web-static-assets' project │
# │                             │
# └─────────────────────────────┘

variable "web_static_assets_S3_BUCKET" {
  description = "Name of S3 bucket used for static asset storage"
  type        = string
}
