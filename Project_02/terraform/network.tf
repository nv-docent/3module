resource "openstack_networking_port_v2" "port_vm_acm" {
    name           = "port_vm_acm"
    network_id     = var.network_id
    admin_state_up = true

    fixed_ip {
        subnet_id   = var.subnet_id
        ip_address  = "192.168.1.21"
    }
}

resource "openstack_networking_port_v2" "port_vm_db" {
    name           = "port_vm_db"
    network_id     = var.network_id
    admin_state_up = true

    fixed_ip {
        subnet_id   = var.subnet_id
        ip_address  = "192.168.1.22"
    }
}

resource "openstack_networking_port_v2" "port_vm_bar" {
    name           = "port_vm_bar"
    network_id     = var.network_id
    admin_state_up = true

    fixed_ip {
        subnet_id   = var.subnet_id
        ip_address  = "192.168.1.23"
    }
}