locals {
  subnet_names = ["subnet-private-a", "subnet-private-b", "subnet-public-c", "subnet-public-d"]
}

locals {
  subnet_cidr_ranges = {
    "subnet-private-a" = "10.0.0.0/16"
    "subnet-private-b" = "10.1.0.0/16"
    "subnet-public-c"  = "10.2.0.0/16"
    "subnet-public-d"  = "10.3.0.0/16"
  }
}
