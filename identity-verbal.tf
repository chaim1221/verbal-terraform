# Right NOW this only contains the Kubernetes engine policy, but
# this SHOULD be a space for all compartment-specific identity traits
module "identity-verbal" {
  source                    = "./identity"
  compartment_id            = "${var.tenancy_ocid}"
  policy_description = "${var.engine_policy_description}"
  policy_name        = "${var.engine_policy_name}"
  policy_statements  = "${var.engine_policy_statements}"

  #Optional
  # defined_tags = {"Operations.CostCenter"= "42"}
  # freeform_tags = {"Department"= "Finance"}
  # version_date = "${var.policy_version_date}"
}

# TODO group Robots (TODO import) _should_ have all the permissions it needs,
# but if it does not we will need to write another policy; then the question
# becomes, how to support multiple policies in the module? count:0?
