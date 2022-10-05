# Web Server
resource "openstack_networking_port_v2" "web_server_port" {
  name               = "${var.project_tag}-${var.env}-web_server_port"
  network_id         = "${openstack_networking_network_v2.network_1.id}"
  admin_state_up     = "true"
  security_group_ids = ["${openstack_compute_secgroup_v2.ssh.id}", 
                        "${openstack_compute_secgroup_v2.web.id}"
                       ]

  fixed_ip {
    subnet_id  = "${openstack_networking_subnet_v2.subnet_1.id}"
    ip_address = "192.168.233.10"
  }
}