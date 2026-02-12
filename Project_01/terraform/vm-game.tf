resource "openstack_compute_instance_v2" "game" {
  count           = var.vm_game_count
  name            = "game0${count.index + 1}"
  flavor_id       = var.flavor_id
  user_data       = file("cloud-init.yml")

  block_device {
    uuid                  = var.image_id
    source_type           = "image"
    volume_size           = var.disk_size
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }

  network {
    port = openstack_networking_port_v2.port_vm_game[count.index].id
  }
}