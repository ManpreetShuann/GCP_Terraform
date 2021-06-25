module "test-bucket" {
  source      = "./module/gcs"
  name        = "${var.project_name}-test-bucket"
  project_id  = var.project_name
  iam_members = []
}
