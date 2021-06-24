module "test-bucket" {
  source      = "./module/gcs"
  name        = "${var.project_name}-test-bucket"
  project_id  = var.project_name
  iam_members = []
}

module "test-bucket-2" {
  source      = "./module/gcs"
  name        = "${var.project_name}-test-bucket-2"
  project_id  = var.project_name
  iam_members = []
}
