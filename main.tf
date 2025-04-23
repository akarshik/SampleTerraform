# 1. First create bucket (auth test)
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

data "oci_objectstorage_namespace" "ns" {}

resource "oci_objectstorage_bucket" "test_bucket" {
  compartment_id = var.compartment_id
  name           = "test-bucket-${random_id.bucket_suffix.hex}"
  namespace      = data.oci_objectstorage_namespace.ns.namespace
}

# 2. Then create compute instance (depends on successful bucket creation)
data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_ocid
}

resource "oci_core_instance" "test_instance" {
  depends_on = [oci_objectstorage_bucket.test_bucket] # Explicit dependency

  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_id
  display_name        = "test-vm-${random_id.bucket_suffix.hex}" # Reusing same suffix

  shape = "VM.Standard.E4.Flex"
  shape_config {
    ocpus         = 2
    memory_in_gbs = 16
  }

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
  }

  source_details {
    source_type             = "image"
    source_id               = var.image_id
    boot_volume_size_in_gbs = 50
  }

  metadata = {
    ssh_authorized_keys = var.compute_ssh_authorized_keys
  }
}