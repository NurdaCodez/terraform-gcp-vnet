#firewall.tf
resource "google_compute_firewall" "firewall" {
  name    = "allow-ssh"
  network = google_compute_network.vnet.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_tags = ["web"]
  target_tags   = ["allow-ssh"]
}