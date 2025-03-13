variable "project_id" {
  description = "level-epoch-436108-t8"
  type        = string
  
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1-c"
}



variable "cluster_name" {
  description = "gcp-devops-prod"
  type        = string
}

variable "network" {
  description = "default"
  type        = string
}


variable "node_count" {
  description = "Number of nodes in the node pool"
  type        = number
  default     = 3
}

variable "machine_type" {
  description = "Machine type for the nodes"
  type        = string
  default     = "e2-standard-2"
}

variable "disk_size_gb" {
  description = "Disk size in GB for each node"
  type        = number
  default     = 16
}

output "cluster_endpoint" {
  value = google_container_cluster.primary.endpoint
}
