variable "config_path"{
    default = "XXXXXXXXXXXXXXX.json"
}
variable "gcp_project"{
    default ="xxxxxx"
}
variable "var_region"{
    default ="us-west1"
}
variable "var_auto_create_subnetworks"{
    default ="false"
}
variable "var_env_name"{
    default ="dev"
}
variable "var_subnet_count"{
    default = 2
}
variable "var_subnet_cidr"{
    default = ["10.10.0.0/16","10.20.0.0/18"]
}
variable "var_host_project_id"{
    description="Enter you host project id"
}
variable "service_project_ids"{
    description="Enter the service project ids"
}
variable "var_source_project_network_name"{
    description ="Enter the source project network name"
    default="dev-vpc"
}
variable "var_dest_project_network_name"{
    description ="Enter the Destination project network name"
    default ="kube-vpc"
}
variable "var_dest_project_name"{
    description ="Enter the Destination Project Name"
    default="xxxxxx"
}
variable "var_source_project_name"{
    description ="Enter the Source Project Name"
    default ="xxxxxx"
}