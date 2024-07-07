terraform {
  backend "gcs" {
    bucket = "dj_learn_terraform"
    prefix = "state"
  }  
}