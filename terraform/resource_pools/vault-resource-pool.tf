provider "vsphere" {
  user           = var.provider_user_name[terraform.workspace]
  password       = var.provider_password[terraform.workspace]
  vsphere_server = var.vsphere_server_name[terraform.workspace]

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = var.datacenter[terraform.workspace]
}

data "vsphere_datastore_cluster" "datastore_cluster" {
  name          = var.datastore_cluster[terraform.workspace]
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = var.resource_pool[terraform.workspace]
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_resource_pool" "resource_pool" {
  name                    = "terraform-resource-pool-test"
  parent_resource_pool_id = data.vsphere_resource_pool.pool.id
}