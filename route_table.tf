# TODO before deploy; is this necessary?
resource "oci_core_route_table" "test_route_table" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
    vcn_id = "${oci_core_vcn.verbal_vcn.id}"

    #Optional
    # defined_tags = {"Operations.CostCenter"= "42"}
    # display_name = "${var.route_table_display_name}"
    # freeform_tags = {"Department"= "Finance"}
    # route_rules {
    #     #Required
    #     network_entity_id = "${oci_core_internet_gateway.test_internet_gateway.id}"

    #     #Optional
    #     cidr_block = "${var.route_table_route_rules_cidr_block}"
    #     destination = "${var.route_table_route_rules_destination}"
    #     destination_type = "${var.route_table_route_rules_destination_type}"
    # }
}
