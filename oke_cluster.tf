
# resource "oci_containerengine_cluster" "generated_oci_containerengine_cluster" {
# 	cluster_pod_network_options {
# 		cni_type = "FLANNEL_OVERLAY"
# 	}
# 	compartment_id = oci_identity_compartment.create-compartment.id
# 	endpoint_config {
# 		is_public_ip_enabled = "true"
# 		# subnet_id = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaagjcryxs6wbm4raqbgnsjcfkoxpudqipn5lhp4r5kfqntfhln5wba"
# 		subnet_id = oci_core_subnet.vcn-public-subnet.id
# 	}
# 	kubernetes_version = var.oke_version
# 	name = var.oke_name
# 	options {
# 		kubernetes_network_config {
# 			services_cidr = "10.96.0.0/16"
# 		}
# 		persistent_volume_config {
# 		}
# 		service_lb_config {
# 		}
# 		service_lb_subnet_ids = [oci_core_subnet.LB-public-subnet.id]
# 	}
# 	type = "ENHANCED_CLUSTER"
# 	# vcn_id = "ocid1.vcn.oc1.ap-mumbai-1.amaaaaaa43cggcia5ftml7ccagdxvdk5k4q6m7ncjzgtqnhrtf3qhji7vbra"
# 	vcn_id = module.vcn.vcn_id
# }

# resource "oci_containerengine_node_pool" "create_node_pool_details" {
# 	cluster_id = "${oci_containerengine_cluster.generated_oci_containerengine_cluster.id}"
# 	compartment_id = oci_identity_compartment.create-compartment.id
# 	initial_node_labels {
# 		key = "name"
# 		value = var.node_pool_name
# 	}
# 	kubernetes_version = var.oke_version
# 	name = var.node_pool_name
# 	node_config_details {
# 		is_pv_encryption_in_transit_enabled = "true"
# 		node_pool_pod_network_option_details {
# 			cni_type = "FLANNEL_OVERLAY"
# 			max_pods_per_node = "31"
# 			# pod_subnet_ids = ["ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaae4mecb4j3ezwipsna2rqhhkdeg2ekfasjryopjdk4cut4c4cidia"]
# 			# pod_subnet_ids = [var.pod_cidr]
# 		}
# 		placement_configs {
# 			availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
# 			fault_domains = ["FAULT-DOMAIN-1", "FAULT-DOMAIN-2", "FAULT-DOMAIN-3"]
# 			# subnet_id = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaae4mecb4j3ezwipsna2rqhhkdeg2ekfasjryopjdk4cut4c4cidia"
# 			subnet_id = oci_core_subnet.vcn-private-subnet.id
# 		}
# 		size = "3"
# 	}
# 	node_eviction_node_pool_settings {
# 		eviction_grace_duration = "PT60M"
# 		is_force_delete_after_grace_duration = "false"
# 	}
# 	node_shape = var.oke_node_shape
# 	node_shape_config {
# 		memory_in_gbs = "16"
# 		ocpus = "1"
# 	}
# 	node_source_details {
# 		boot_volume_size_in_gbs = "200"
# 		image_id = data.oci_core_images.oracle_linux_images.images[0].id
# 		source_type = "IMAGE"
# 	}
# }

# data "oci_core_images" "oracle_linux_images"  {
#     #Required
#     compartment_id = var.compartment_ocid
#     # images = data.oci_core_images.test_images.id

#     # filter {
#     # name   = "operating_system"
#     # values = ["Oracle Linux"]
#     # }

#     # filter {
#     # name   = "operating_system_version"
#     # values = ["8"]
#     # }

#     filter {
#     name   = "display_name"
#     values = [var.oke_worker_node_image]
#     }
# }
