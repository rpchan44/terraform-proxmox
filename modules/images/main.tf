resource "proxmox_virtual_environment_download_file" "download" {

  content_type = "iso"
  datastore_id = "local"
  node_name    = var.server_name
  url          = "https://cloud-images.ubuntu.com/${var.release}/current/${var.release}-server-cloudimg-amd64.img"
  file_name    = "${var.release}-server-cloudimg-amd64.qcow2.img"

  lifecycle {
    prevent_destroy = true
  }

}
