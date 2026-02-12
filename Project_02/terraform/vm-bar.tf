resource "openstack_compute_instance_v2" "bar" {
  name            = "BAR-Agent01"
  flavor_id       = var.flavor_id_bar
  user_data       = file("cloud-init.yml")

  block_device {
    uuid                  = var.image_id
    source_type           = "image"
    volume_size           = var.disk_size_bar
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }

  network {
    port = openstack_networking_port_v2.port_vm_bar.id
  }
}