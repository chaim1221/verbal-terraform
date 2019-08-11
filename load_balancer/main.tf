resource "oci_load_balancer_load_balancer" "load_balancer" {
    #Required
    compartment_id = "${var.compartment_id}"
    display_name = "${var.load_balancer_display_name}"
    shape = "${var.load_balancer_shape}"
    subnet_ids = "${var.load_balancer_subnet_ids}"

    #Optional
    is_private = "${var.private_load_balancer}"
    #defined_tags = { }
    #freeform_tags = { }
    #ip_mode = "${var.load_balancer_ip_mode}"
    #network_security_group_ids = "${var.load_balancer_network_security_group_ids}"
}
