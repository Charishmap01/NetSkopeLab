//output variables
output "cluster_name" {
  value = google_container_cluster.gke_cluster.name
}

output "location" {
  value = google_container_cluster.gke_cluster.location
}

output "node_pool_name"{
 value = google_container_node_pool.cluster_node_pool.name
}