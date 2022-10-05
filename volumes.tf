# resource "openstack_blockstorage_volume_v2" "web_server_volume" {
#   name        = "${var.project_tag}-${var.env}-web_server_volume"
#   region      = "${var.region}"
#   description = "Web Server volume"
#   size        = 15
# }