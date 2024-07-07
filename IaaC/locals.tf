locals {
  # Project
  project_name       = "dj-learn"
  region              = "europe-west2"
  # GCS
  bucket_name_prefix = "dj_learn"
  buckets = [
    "${local.bucket_name_prefix}_test"  
  ]    
}