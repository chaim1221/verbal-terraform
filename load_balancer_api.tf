module "load_balancer_api" {
  source             = "./load_balancer"
  compartment_id     = "${var.tenancy_ocid}"
  load_balancer_display_name = "LBApi"
  load_balancer_subnet_ids = [ "${oci_core_subnet.public_subnet.id}" ]
}
