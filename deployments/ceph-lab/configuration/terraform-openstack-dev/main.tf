terraform {
  backend "local" {}
}

terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.47.0"
    }
  }
}


provider "openstack" {
  # all values are loaded from env. variables openstack RC file, see REAME.md
}



module "kube_training" {
  source = "./../modules/kube_training"

  # Example of variable override
  public_key = "~/.ssh/klaris-tp.pub"

  kusername          = "ceph-conf"
  worker_nodes_count = 2
  master_nodes_count = 10
  int_network        = "10.30.0.0/24"

  master_nodes_flavor = "hpc.8core-16ram"
  master_node_volume_size = 1024

  # If you are using this modul for install kubespray
  kube_vip = "10.30.0.5"
  kube_fip = false
  kube_fip_create_port = false

}