resource "google_compute_instance" "default" {
  name         = "test123"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  project      = var.project 
  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
varibale "project" {
type = string
}
