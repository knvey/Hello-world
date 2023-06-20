terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("<chemin_vers_votre_fichier_json_de_service_account>")
  project     = "corded-evening-390420"
  region      = "europe-north1-a"
}

resource "google_container_cluster" "my_cluster" {
  name     = "demo2"
  location = "europe-north1-a"
  initial_node_count = 1

  # Plus de configurations de votre cluster GKE...
}
