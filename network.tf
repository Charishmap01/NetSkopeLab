
/* -------------------------------------------------------------------------
	Network definition
	
	This assumes a default network
	
--------------------------------------------------------------------------- */

resource "google_compute_network" "default" {
  name                    = var.network
  description             = "Defines the main network used by the project"
  auto_create_subnetworks = "false"
  project                 = var.project
}

resource "google_compute_subnetwork" "subnet_east1" {
  project                  = var.project
  name                     = "subnet-east1"
  ip_cidr_range            = "10.1.0.0/21"
  region                   = var.region
  network                  = google_compute_network.default.self_link
  private_ip_google_access = "true"
}

resource "google_compute_subnetwork" "subnet_west1" {
  project                  = var.project
  name                     = "subnet-west1"
  ip_cidr_range            = "10.1.0.0/21"
  region                   = var.region
  network                  = google_compute_network.default.self_link
  private_ip_google_access = "true"
}


