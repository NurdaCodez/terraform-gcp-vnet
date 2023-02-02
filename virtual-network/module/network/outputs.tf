output "google_compute_network" {
  value = google_compute_network.vnet.id
}

output "google_compute_subnetwork" {
  value = {
    for subnet in google_compute_subnetwork.subnets : subnet.name => subnet.self_link
  }
}


output "google_compute_router" {
  value = google_compute_router.router.name
}

output "google_compute_nat_router" {
  value = google_compute_router_nat.nat.name
}


output "google_compute_firewall" {
  value = google_compute_firewall.firewall.id
}
