# Virtual Machine Instance
resource "openstack_compute_instance_v2" "web_server" {
  name            = "${var.project_tag}-${var.env}-web_server"
  image_id        = "${var.uos_image_id}"
  flavor_id       = "${var.medium_flavor_id}"
  key_pair        = "${openstack_compute_keypair_v2.test_keypair.id}"
  
  metadata = {
    this = "meta"
  }

  network {
    port = "${openstack_networking_port_v2.web_server_port.id}"
  }
}

# attach volume to the VM
# resource "openstack_compute_volume_attach_v2" "attached" {
#   instance_id = "${openstack_compute_instance_v2.web_server.id}"
#   volume_id   = "${openstack_blockstorage_volume_v2.web_server_volume.id}"
# }