output "vpcId" {
    value = "${google_compute_subnetwork.subnet.*.id}"
}