
variable "compartment_id" {
  default = "incorrect_value"
}

variable "load_balancer_display_name" {
  default = "incorrect_value"
}

# trying to stay on the free tier here :p
variable "load_balancer_shape" {
  default = "100Mbps"
}

variable "load_balancer_subnet_ids" {
  default = [ "incorrect_value" ]
}

variable "private_load_balancer" {
  default = false
}
