locals {
  # Project
  project_name       = var.project
  region              = var.region
  # GCS
  bucket_name_prefix = "dj_learn"
  buckets = [
    "${local.bucket_name_prefix}_data"  
  ]    
}