resource "oci_core_internet_gateway" "verbal_internet_gateway" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
    vcn_id = "${oci_core_vcn.verbal_vcn.id}"

    #Optional
    # enabled = "${var.internet_gateway_enabled}"
    # defined_tags = {"Operations.CostCenter"= "42"}
    # display_name = "${var.internet_gateway_display_name}"
    # enabled = "${var.internet_gateway_enabled}"
    # freeform_tags = {"Department"= "Finance"}
}
