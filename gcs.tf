module "test-bucket-1" {
  source     = "./module/gcs"
  name       = "${var.project_name}-test-bucket-1"
  project_id = var.project_name
  iam_members = [
    {
      role   = "roles/storage.objectViewer"
      member = "serviceAccount:jenkins@secops-316111.iam.gserviceaccount.com"
    }
  ]
}
