variable "OS_AUTH_URL" {
	type = string
	sensitive = true
}

variable "OS_PROJECT_NAME" {
	type = string
	sensitive = true
}

variable "OS_USERNAME" {
	type = string
	sensitive = true
}

variable "OS_PASSWORD" {
	type = string
	sensitive = true
}

variable "vm_game_count" {
    type = number
    default = 3  
}

# 1 vCPU; 1 RAM
## openstack --insecure flavol list
variable "flavor_id" {
	type = string
	default = "d45876be-371b-4f35-b511-624a104426e2"
}

# alt-p11-cloud
## openstack --insecure image list
variable "image_id" {
	type = string
	default = "6369e481-e63f-43fc-bd1d-37b3f73efbd8"
}

variable "disk_size" {
	type = number
	default = "10"
}

# openstack --insecure network list
variable "network_id" {
	type = string
	default = "da39ea94-95fa-4777-a4de-fb13b22430c5"
}

# openstack --insecure subnet list
variable "subnet_id" {
	type = string
	default = "88ae9458-b535-4ea6-87bb-f0be2d318d01"
}

# openstack --insecure network list
variable "public_network_name" {
	type = string
	default = "public"
}
