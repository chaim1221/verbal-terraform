# module "load_balancer_web" {
#   source             = "./load_balancer"
#   compartment_id     = "${var.tenancy_ocid}"
#   load_balancer_display_name = "LBWeb"
#   load_balancer_subnet_ids = [ "${oci_core_subnet.public_subnet.id}" ]
# }

# if all goes well, will not need a web load balancer because a bucket will serve JS/HTML
