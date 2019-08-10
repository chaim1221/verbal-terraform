resource "oci_dns_zone" "verbal_cloud" {
    #Required
    compartment_id = "${var.compartment_id}"
    name = "${var.cloud_zone_name}"
    zone_type = "${var.cloud_zone_type}"

    # #Optional
    # defined_tags = "${var.zone_defined_tags}"
    # external_masters {
    #     #Required
    #     address = "${var.zone_external_masters_address}"

    #     #Optional
    #     port = "${var.zone_external_masters_port}"
    #     tsig {
    #         #Required
    #         algorithm = "${var.zone_external_masters_tsig_algorithm}"
    #         name = "${var.zone_external_masters_tsig_name}"
    #         secret = "${var.zone_external_masters_tsig_secret}"
    #     }
    # }
    # freeform_tags = "${var.zone_freeform_tags}"
}

resource "oci_dns_record" "verbal_ssh" {
    #Required
    zone_name_or_id = "${var.cloud_zone_name}"
    domain = "${var.verbal_ssh_domain}"
    rtype = "${var.verbal_ssh_rtype}"

    #Optional
    compartment_id = "${var.compartment_id}"
    rdata = "${var.verbal_ssh_ip}"
    ttl = "${var.verbal_ssh_ttl}"
}
