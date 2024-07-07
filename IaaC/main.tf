# Trigger: Terraform apply test for GCP
module "providers" {
    source  = "./modules/providers"
    project = local.project_name
    region  = local.region
}
# # ----------------------------------------------------------------------------------------------------------------------
# # Cloud Storage
# # ----------------------------------------------------------------------------------------------------------------------
module "gcs_buckets" {
    source = "./modules/storage"
    project   = local.project_name
    location  = local.region
    bucket_name_set = local.buckets
    # delete data after 10 days
    lifecycle_rules = [ 
    {
        condition = {
            age = 10
        }
        action = {
        with_state = "ANY"
        type = "Delete"
        }
    }
    ]
}