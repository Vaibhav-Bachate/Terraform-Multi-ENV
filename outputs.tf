output "eks_cluster_name" {
  value = module.eks.name
}

output "kubeconfig_command" {
  value = "aws eks --region ${var.region} update-kubeconfig --name ${module.eks.name}"
}
