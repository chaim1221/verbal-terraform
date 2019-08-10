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
  default = "203.0.113.2"
}

# TODO parameterize for deploy, or use env var
variable "verbal_ssh_domain" {
  default = "verbal.cloud"
}
