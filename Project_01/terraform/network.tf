resource "openstack_networking_port_v2" "port_vm_game" {
    count          = var.vm_game_count
    name           = "port_vm_game0${count.index + 1}"
    network_id     = var.network_id
    admin_state_up = true

    fixed_ip {
        subnet_id   = var.subnet_id
        ip_address  = "192.168.1.1${count.index + 1}"
    }
}

resource "openstack_networking_port_v2" "haproxy" {
    name           = "port_vm_haproxy"
    network_id     = var.network_id
    admin_state_up = true

    fixed_ip {
        subnet_id   = var.subnet_id
        ip_address  = "192.168.1.10"
    }
}