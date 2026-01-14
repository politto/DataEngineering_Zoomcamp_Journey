variable "project" {
  description = "Project"
  default    = "strategic-cacao-484207-e4"
}

variable "location" {
  description = "kon thai plaw wa issara, issara plae wa yuu teenai ko dai"
  default    = "asia-southeast1"
}

variable "bq_dataset_name" {
  description = "My bigquery dataset is kor dad mun ron pen kon na mai chai hun yon"
  default    = "pololo_demo_dataset"
}

variable "gcs_storage_class" {
  description = "My Bucket storage class is standard na"
  default     = "STANDARD"
}

variable "gcs_bucket_name" {
  description = "My Bucket bucket name hi class man who not song ying seksee"
  default     = "strategic-cacao-484207-e4-pololo"
}