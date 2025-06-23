variable "name" {}
variable "subnet_ids" {
  type = list(string)
}
variable "cluster_role_arn" {}
variable "node_role_arn" {}
variable "cluster_role_depends_on" {
  type = list(any)
}
variable "desired_capacity" {}
variable "max_size" {}
variable "min_size" {}
variable "instance_type" {}
