resource "google_compute_subnetwork" "subnet" {
  count         = "${var.subnet_count}"
  name          = "${var.env_name}-subnet-${count.index}"
  ip_cidr_range = "${var.subnet_cidr[count.index]}"
  network       = "${var.env_name}-vpc"
  region        = "${var.region_name}"
}
