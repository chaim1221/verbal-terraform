# Configure the Oracle Cloud Infrastructure provider with an API Key
provider "oci" {
  tenancy_ocid = "${var.tenancy_ocid}"
  user_ocid = "${var.user_ocid}"
  fingerprint = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region = "${var.region}"
}

output "version" {
  value = "Verbal Cloud version ${var.release_versions["verbal-cloud"]}"
}
# # Debugging
# output "tenancy_ocid" {
#   value = "${var.tenancy_ocid}"
# }
# output "user_ocid" {
#   value = "${var.user_ocid}"
# }
# output "fingerprint" {
#   value = "${var.fingerprint}"
# }
# output "private_key_path" {
#   value = "${var.private_key_path}"
# }
# output "region" {
#   value = "${var.region}"
# }
