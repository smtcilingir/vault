# ===================== #
# Virtual Machines Tags #
# ===================== #
# Tag Categories #


provider "vsphere" {
  user           = var.provider_user_name[terraform.workspace]
  password       = var.provider_password[terraform.workspace]
  vsphere_server = var.vsphere_server_name[terraform.workspace]

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_tag_category" "tag-category-vault" {    
  name = "vault"    
  cardinality = "MULTIPLE"
  description = "Managed by Terraform"
  associable_types = [        
    "VirtualMachine"    
  ]
}

# Vault #
resource "vsphere_tag" "tag-vault-cluster" {    
  name = "vault"    
  category_id = vsphere_tag_category.tag-category-vault.id
  description = "vault cluster"
} 




