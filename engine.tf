resource "oci_containerengine_cluster" "verbal_cluster" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
    kubernetes_version = "${var.cluster_kubernetes_version}"
    name = "${var.cluster_name}"
    vcn_id = "${oci_core_vcn.verbal_vcn.id}"

    #Optional
    # options {

    #     #Optional
    #     add_ons {

    #         #Optional
    #         is_kubernetes_dashboard_enabled = "${var.cluster_options_add_ons_is_kubernetes_dashboard_enabled}"
    #         is_tiller_enabled = "${var.cluster_options_add_ons_is_tiller_enabled}"
    #     }
    #     kubernetes_network_config {

    #         #Optional
    #         pods_cidr = "${var.cluster_options_kubernetes_network_config_pods_cidr}"
    #         services_cidr = "${var.cluster_options_kubernetes_network_config_services_cidr}"
    #     }
    #     service_lb_subnet_ids = "${var.cluster_options_service_lb_subnet_ids}"
    # }
}

resource "oci_containerengine_node_pool" "verbal_node_pool" {
    #Required
    cluster_id = "${oci_containerengine_cluster.verbal_cluster.id}"
    compartment_id = "${var.tenancy_ocid}"
    kubernetes_version = "${var.cluster_kubernetes_version}"
    name = "${var.node_pool_name}"
    node_shape = "${var.node_pool_node_shape}"
    subnet_ids = [ "${oci_core_subnet.public_subnet.id}" ]

    # #Optional
    # initial_node_labels {

    #     #Optional
    #     key = "${var.node_pool_initial_node_labels_key}"
    #     value = "${var.node_pool_initial_node_labels_value}"
    # }
    # node_image_name = "${var.node_pool_node_image_name}"
    # node_metadata = "${var.node_pool_node_metadata}"
    # quantity_per_subnet = "${var.node_pool_quantity_per_subnet}"
    # ssh_public_key = "${var.node_pool_ssh_public_key}"
}
