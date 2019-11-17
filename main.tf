variable "vpc_name" {
  
}
variable "project_id" {
  
}

variable "routing_mode" {
  default = "REGIONAL"
}

resource "google_compute_network" "default" {
  name = "${var.vpc_name}"
  project = "${var.project_id}"
  routing_mode = "${var.routing_mode}"
  auto_create_subnetworks = false
}

