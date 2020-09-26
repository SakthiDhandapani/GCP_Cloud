resource "google_compute_shared_vpc_service_project" "service_projects" {
count = "${length(var.service_projects)}"
  host_project    = "${google_compute_shared_vpc_host_project.host.project}"
  service_project = "${var.service_projects[count.index]}"
}