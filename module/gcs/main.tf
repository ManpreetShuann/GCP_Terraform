resource "google_storage_bucket" "bucket" {
  name               = var.name
  location           = var.location
  project            = var.project_id
  storage_class      = var.storage_class
  bucket_policy_only = var.bucket_policy_only

  versioning {
    enabled = "true"
  }

  /*encryption {
    default_kms_key_name =var.cmek_gcskey
  }*/

  labels = {
    terraformed = "true"
    project     = var.project_id
  }
}

resource "google_storage_bucket_iam_member" "members" {
  for_each = {
    for m in var.iam_members : "${m.role} ${m.member}" => m
  }
  bucket = google_storage_bucket.bucket.name
  role   = each.value.role
  member = each.value.member
}
