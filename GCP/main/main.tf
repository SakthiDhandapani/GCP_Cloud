provider "google" {
  credentials = "${file("${var.config_path}")}"
  project     = "${var.gcp_project}"
  region      = "${var.var_region}"
}

module "subnet" {
  source       = "../modules/subnet"
  env_name     = "${var.var_env_name}"
  subnet_count = "${var.var_subnet_count}"
  subnet_cidr  = "${var.var_subnet_cidr}"
  region_name  = "${var.var_region}"
  depends_on   = ["module.vpc"]
}
module "vpc" {
  source                  = "../modules/global"
  env_name                = "${var.var_env_name}"
  auto_create_subnetworks = "${var.var_auto_create_subnetworks}"
}
/*module "serviceproject" {
  source              = "../modules/serviceProject"
  service_project_ids = "${var.var_service_project_ids}"
  depends_on          = ["module.hostproject"]
}
module "hostproject" {
  source  = "../modules/hostProject"
  project = "${var.var_host_project_id}"

}*/
module "vpc_peering"{
  source = "../modules/vpc_peering"
  dest_project_name ="${var.var_dest_project_name}"
  source_project_name="${var.var_source_project_name}"
  dest_project_network_name="${var.var_dest_project_network_name}"
  source_project_network_name="${var.var_source_project_network_name}"
  depends_on   = ["module.vpc"]
}

