#vpc
resource "google_compute_network" "vnet" {
  name                    = "vnetwork"
  auto_create_subnetworks = false
}
