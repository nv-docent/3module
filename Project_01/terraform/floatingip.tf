resource "openstack_networking_floatingip_v2" "floatingip_haproxy" {
  pool = var.public_network_name
}

resource "openstack_networking_floatingip_associate_v2" "association_haproxy" {
  port_id     = openstack_networking_port_v2.haproxy.id
  floating_ip = openstack_networking_floatingip_v2.floatingip_haproxy.address
}