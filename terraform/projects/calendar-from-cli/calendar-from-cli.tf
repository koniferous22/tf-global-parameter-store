resource "aws_ssm_parameter" "calendar_neon_CALENDAR_DATABASE_URL" {
  name        = "/${local.project_name}/${var.environment}/neon/CALENDAR_DATABASE_URL"
  description = "Connection URL to Neon serverless Postgres"
  type        = "SecureString"
  value       = var.calendar_neon_CALENDAR_DATABASE_URL

  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

resource "aws_ssm_parameter" "calendar_neon_DIRECT_CALENDAR_DATABASE_URL" {
  name        = "/${local.project_name}/${var.environment}/neon/DIRECT_CALENDAR_DATABASE_URL"
  description = "Connection URL to Neon serverless Postgres"
  type        = "SecureString"
  value       = var.calendar_neon_DIRECT_CALENDAR_DATABASE_URL

  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

resource "aws_ssm_parameter" "calendar_lambda_api_admin_NODE_ENV" {
  name        = "/${local.project_name}/${var.environment}/lambda/api/admin/NODE_ENV"
  description = "NODE_ENV for admin API"
  type        = "String"
  value       = var.calendar_lambda_api_admin_NODE_ENV
  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

resource "aws_ssm_parameter" "calendar_lambda_api_admin_CALENDAR_API_ADMIN_RUNTIME" {
  name        = "/${local.project_name}/${var.environment}/lambda/api/admin/CALENDAR_API_ADMIN_RUNTIME"
  description = "Application runtime - expected value = 'serverless'"
  type        = "String"
  value       = var.calendar_lambda_api_admin_CALENDAR_API_ADMIN_RUNTIME
  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

resource "aws_ssm_parameter" "calendar_lambda_api_public_NODE_ENV" {
  name        = "/${local.project_name}/${var.environment}/lambda/api/public/NODE_ENV"
  description = "NODE_ENV for public API"
  type        = "String"
  value       = var.calendar_lambda_api_public_NODE_ENV
  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

resource "aws_ssm_parameter" "calendar_lambda_api_public_CALENDAR_API_PUBLIC_RUNTIME" {
  name        = "/${local.project_name}/${var.environment}/lambda/api/public/CALENDAR_API_PUBLIC_RUNTIME"
  description = "Application runtime - expected value = 'serverless'"
  type        = "String"
  value       = var.calendar_lambda_api_public_CALENDAR_API_PUBLIC_RUNTIME
  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

resource "aws_ssm_parameter" "calendar_lambda_api_public_JWT_SECRET" {
  name        = "/${local.project_name}/${var.environment}/lambda/api/public/JWT_SECRET"
  description = "JWT secret for providing and validating application credentials"
  type        = "SecureString"
  value       = var.calendar_lambda_api_public_JWT_SECRET
  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

resource "aws_ssm_parameter" "calendar_route53_PARENT_DOMAIN" {
  name        = "/${local.project_name}/${var.environment}/route53/PARENT_DOMAIN"
  description = "Parent domain name for calendar project"
  type        = "String"
  value       = var.calendar_route53_PARENT_DOMAIN
  tags = {
    environment = var.environment
    project     = local.project_name
  }
}
