#subnet.tf 
resource "google_compute_subnetwork" "subnets" {

  for_each      = { for name in local.subnet_names : name => {} }
  name          = each.key
  ip_cidr_range = lookup(local.subnet_cidr_ranges, each.key)

  region  = var.region
  network = google_compute_network.vnet.id
}