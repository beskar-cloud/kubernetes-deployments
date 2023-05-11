output "kube_training_master_instance_ip" {
  value = module.kube_training.master_instance_ip
}

output "kube_training_worker_instance_ip" {
  value = module.kube_training.worker_instance_ip
}

output "kube_training_internal_vip" {
  value = module.kube_training.vip_ip
}

output "kube_training_floating_vip" {
  value = module.kube_training.vip_fip
}

output "kube_training_head_master_fip" {
  value = module.kube_training.head_master_fip
}