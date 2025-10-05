terraform {
  backend "s3" {
    bucket                      = "proxmox"
    key                         = "proxmox"
    region                      = "us-east-1"
    access_key                  = var.minio_access_key
    secret_key                  = var.minio_secret
    skip_credentials_validation = true
    skip_region_validation      = true
    use_path_style              = true
    skip_requesting_account_id  = true
    endpoints = {
      s3 = "${var.minio_endpoint}"
    }
  }
}
