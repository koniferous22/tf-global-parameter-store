module "calendar_from_cli_prod" {
  source                                                 = "./projects/calendar-from-cli"
  environment                                            = var.environment
  calendar_api_gateway_PARENT_DOMAIN                     = var.calendar_api_gateway_PARENT_DOMAIN
  calendar_lambda_api_admin_NODE_ENV                     = var.calendar_lambda_api_admin_NODE_ENV
  calendar_lambda_api_admin_CALENDAR_API_ADMIN_RUNTIME   = "serverless"
  calendar_lambda_api_public_NODE_ENV                    = var.calendar_lambda_api_public_NODE_ENV
  calendar_lambda_api_public_CALENDAR_API_PUBLIC_RUNTIME = "serverless"
  calendar_lambda_api_public_JWT_SECRET                  = var.calendar_lambda_api_public_JWT_SECRET
  calendar_neon_CALENDAR_DATABASE_URL                    = var.calendar_neon_CALENDAR_DATABASE_URL
  calendar_neon_DIRECT_CALENDAR_DATABASE_URL             = var.calendar_neon_DIRECT_CALENDAR_DATABASE_URL
}

module "web_static_assets" {
  source                      = "./projects/web-static-assets"
  web_static_assets_s3_bucket = var.web_static_assets_S3_BUCKET
}