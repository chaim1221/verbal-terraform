# https://www.terraform.io/docs/providers/oci/index.html#environment-variables

variable "tenancy_ocid" {
  default = "incorrect_value"
}

variable "user_ocid" {
  default = "incorrect_value"
}

variable "fingerprint" {
  default = "incorrect_value"
}

variable "private_key_path" {
  default = "incorrect_value"
}

variable "region" {
  default = "us-ashburn-1"
}

variable "cloud_zone_name" {
  default = "VerbalCloud"
}

variable "cloud_zone_type" {
  default = "PRIMARY"
}

variable "aws_compat_credentials_file" {
  default = "incorrect_value"
}

# https://tools.ietf.org/html/rfc5737
variable "verbal_ssh_ip" {
  default = "198.51.100.2"
}

# TODO parameterize for deploy, or use env var
variable "verbal_ssh_domain" {
  default = "verbal.cloud"
}

# TODO this should be the IP of the Internet Gateway
# https://tools.ietf.org/html/rfc5737
variable "verbal_api_ip" {
  default = "203.0.113.2"
}

# TODO parameterize for deploy, or use env var
variable "verbal_api_domain" {
  default = "verbalapi.site"
}

# https://tools.ietf.org/html/rfc5737
variable "verbal_chat_ip" {
  default = "203.0.113.3"
}

# TODO parameterize for deploy, or use env var
variable "verbal_chat_domain" {
  default = "verbalchat.site"
}

# for use by the ALBs
variable "public_subnet_cidr_block" {
  default = "192.168.0.0/24"
}

# not currently used
# variable "private_subnet_cidr_block" {
#   default = "10.0.0.0/24"
# }

# if follows AWS pattern, not really used; could use for a bastion maybe
variable "vcn_cidr_block" {
  default = "172.16.0.0/24"
}

variable "engine_policy_description" {
  default = "Policy for Oracle Container Engine as described in https://docs.cloud.oracle.com/iaas/Content/ContEng/Concepts/contengpolicyconfig.htm#PolicyPrerequisitesService"
}

variable "engine_policy_name" {
  default = "ContainerEnginePolicy"
}

variable "engine_policy_statements" {
  default = [ "Allow service OKE to manage all-resources in tenancy" ]
}

# the docs could be a little better here. taking them literally.
# https://www.terraform.io/docs/providers/oci/r/core_public_ip.html
variable "public_ip_lifetime" {
  default = "ephemeral"
}

# TODO env var; or, main.tf.json ?
variable "cluster_kubernetes_version" {
  default = "1.15.0"
}

variable "cluster_name" {
  default = "verbal_cluster"
}

variable "node_pool_name" {
  default = "verbal_node_pool"
}

variable "node_pool_node_shape" {
  default = "VM.Standard 1.1"
}
