terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.15.0"
    }
  }
}

provider "google" {
  # credentials = "./keys/my-creds.json"
  project = var.project
  # actually must seperate to region variable but it is the same na
  region  = var.location
}


#                                  v local bucket name
resource "google_storage_bucket" "pololo-demo-bucket" {
  #                real project name
  name          = var.gcs_bucket_name
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      # 1 day
      age = 1
    }
    action {
      type = "Delete"
    }
  }
}


resource "google_bigquery_dataset" "pololo_demo_dataset" {
  dataset_id = var.bq_dataset_name
  location   = var.location
  # delete_contents_on_destroy = true
}