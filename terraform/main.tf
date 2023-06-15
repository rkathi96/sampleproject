terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("privatekey.json")
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "instance" {
  name         = "my-instance"
  machine_type = "n1-standard-1"
  zone         = var.zone

  # Add any additional instance configurations as needed
}

output "instance_ip" {
  value = google_compute_instance.instance.network_interface.0.access_config.0.nat_ip
}
