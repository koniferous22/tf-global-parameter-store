resource "aws_ssm_parameter" "stopwatch_route53_PARENT_DOMAIN" {
  name        = "/${local.project_name}/${var.environment}/route53/PARENT_DOMAIN"
  description = "Parent domain name for stopwatch project"
  type        = "String"
  value       = var.stopwatch_route53_PARENT_DOMAIN
  tags = {
    environment = var.environment
    project     = local.project_name
  }
}

