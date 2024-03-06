# ┌───────────────────┐
# │                   │
# │ project variables │
# │                   │
# └───────────────────┘


resource "aws_ssm_parameter" "web_static_assets_s3_bucket" {
  name        = "/${local.project_name}/S3_BUCKET"
  description = "Name of S3 bucket used for static asset storage"
  type        = "String"
  value       = var.web_static_assets_s3_bucket
  tags = {
    project = local.project_name
  }
}
