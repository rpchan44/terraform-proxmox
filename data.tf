data "terraform_remote_state" "installer" {
  backend = "s3"
  config = {
    bucket                      = "proxmox-demo1"
    key                         = "proxmox-demo1" # overridden at init backend is hardcoded
    region                      = "us-east-1"
    access_key                  = "minioadmin"
    secret_key                  = "minioadmin"
    skip_credentials_validation = true
    skip_region_validation      = true
    use_path_style              = true
    skip_requesting_account_id  = true
    endpoints = {
      s3 = "http://192.168.51.99:9000"
    }
  }
}
