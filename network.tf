resource "openstack_networking_network_v2" "network_1" {
  name           = "${var.project_tag}-${var.env}-network_1"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet_1" {
  name       = "${var.project_tag}-${var.env}-subnet_1"
  network_id = "${openstack_networking_network_v2.network_1.id}"
  cidr       = var.cidr[0]
  ip_version = 4
}