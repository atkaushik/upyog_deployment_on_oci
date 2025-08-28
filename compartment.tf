resource "oci_identity_compartment" "create-compartment" {
  # Required
  provider       = oci.PHX
  compartment_id = var.compartment_ocid
  description    = "Compartment for Upyog Dev."
  name           = "upyog_dev_2"
}