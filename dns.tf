module "dns" {
  source            = "./dns"
  compartment_id    = "${var.tenancy_ocid}"
  cloud_zone_name   = "${var.cloud_zone_name}"
  cloud_zone_type   = "${var.cloud_zone_type}"
  verbal_ssh_ip     = "${var.verbal_ssh_ip}"
  verbal_ssh_domain = "${var.verbal_ssh_domain}"
}
