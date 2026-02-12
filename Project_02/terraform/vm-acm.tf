resource "openstack_compute_instance_v2" "acm" {
  name            = "ACM-Server"
  flavor_id       = var.flavor_id_acm
  user_data       = file("cloud-init.yml")

  block_device {
    uuid                  = var.image_id
    source_type           = "image"
    volume_size           = var.disk_size_acm
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }

  network {
    port = openstack_networking_port_v2.port_vm_acm.id
  }
}