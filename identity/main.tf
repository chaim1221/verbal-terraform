resource "oci_identity_policy" "compartment_policy" {
    #Required
    compartment_id = "${var.compartment_id}"
    description = "${var.policy_description}"
    name = "${var.policy_name}"
    statements = "${var.policy_statements}"

    #Optional
    # defined_tags = {"Operations.CostCenter"= "42"}
    # freeform_tags = {"Department"= "Finance"}
    # version_date = "${var.policy_version_date}"
}
