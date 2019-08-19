#naturally if we needed more than one public IP, this would be a module.

resource "oci_core_public_ip" "verbal_public_ip" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
    lifetime = "${var.public_ip_lifetime}"

    #Optional
    # defined_tags = {"Operations.CostCenter"= "42"}
    # display_name = "${var.public_ip_display_name}"
    # freeform_tags = {"Department"= "Finance"}
    # private_ip_id = "${oci_core_private_ip.test_private_ip.id}"
}
