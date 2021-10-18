variable "admin_user_name"{
    type = map(string)
}

variable "admin_password"{
    type = map(string)
}

variable "provider_user_name"{
    type = map(string)
}

variable "provider_password"{
    type = map(string)
}

variable "vsphere_server_name"{
    type = map(string)
}

variable "datacenter" {
  type = map(string)
}

variable "datastore_cluster" {
  type = map(string)
}

variable "resource_pool" {
  type = map(string)
}

