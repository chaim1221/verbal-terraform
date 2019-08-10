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
  default = "verbal_cloud"
}

variable "cloud_zone_type" {
  default = "PRIMARY"
}
