admin_user_name = { 
    staging = "" 
    prod = ""
}

admin_password  = { 
    staging = "" 
    prod = ""
}

provider_user_name = { 
    staging = "vsphere user name"
    prod = ""
}

provider_password  = {
    staging = "wsphere user password"
    prod = ""
}

vsphere_server_name = {
    staging = "vsphere url"
    prod = ""
}

vault_user_publickey = { 
    staging = "ed25519 ssh public key" 
    prod = ""
}

datacenter = {
    staging = ""
    prod = ""
}

datastore_cluster = {
    staging = ""
    prod = ""
}

resource_pool = {
    staging = "vault"
    prod = "vault"
}

network = {
    staging = ""
    prod = ""
}

vault-category = {
    staging = "tag category name"
    prod = ""
}

tag-vault = {
    staging = "tag name"
    prod = ""
}

vm_folder = {
    staging = ""
    prod = ""
}

num_of_cpus = {
    staging = 4
    prod = 4
}

memory_size = {
    staging = 8096
    prod = 8096
}

domain = {
    staging = "example.com.tr"
    prod = ""
}

ipv4_address_prefix = {
    staging = "first 3 8-bit part of ipv4 address  eg. 10.43.1"
    prod = ""
}

ipv4_net_mask = {
    staging = 22 #subnet mask
    prod = 22
}

ipv4_gateway = {
    staging = ""
    prod = ""
}

dns_server_list = {
    staging = [  ]
    prod = [  ]
}

disk_label = {
    staging = ""
    prod = ""
}

instance_count = { 
    staging = 1 #number of vms to be created  
    prod = 1
}

vm_name_prefix = {
    staging = ""
    prod = ""
}

host_name_prefix = {
    staging = ""
    prod = ""
}

machine_name_start_index = {
    staging = 1 #4th 8-bit part ıf ipv4 address
    prod = 1
}

template_name = {
    staging = "tamplate vm's name"
    prod = ""
}

