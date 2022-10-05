resource "openstack_compute_keypair_v2" "test_keypair" {
  name = "${var.project_tag}-${var.env}-test_keypair"
}