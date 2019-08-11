module "dns" {
  source             = "./dns"
  compartment_id     = "${var.tenancy_ocid}"
  cloud_zone_name    = "${var.cloud_zone_name}"
  cloud_zone_type    = "${var.cloud_zone_type}"
  verbal_ssh_ip      = "${var.verbal_ssh_ip}"
  verbal_ssh_domain  = "${var.verbal_ssh_domain}"
  verbal_api_ip      = "${var.verbal_api_ip}"
  verbal_api_domain  = "${var.verbal_api_domain}"
  verbal_chat_ip     = "${var.verbal_chat_ip}"
  verbal_chat_domain = "${var.verbal_chat_domain}"
}
