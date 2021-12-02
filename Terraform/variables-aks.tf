variable "cluster_name" {
  description = "Create k8s cluster names"
  type        = list(string)
  default     = ["k8s-quiz-test", "k8s-quiz-dev"]
}

variable "kubeconfig_name" {
  description = "Create k8s cluster names"
  type        = list(string)
  default     = ["config-quiz-test", "config-quiz-dev"]
}