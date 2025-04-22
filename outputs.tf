output "instance_public_ip" {
  value = oci_core_instance.test_instance.public_ip
}

output "instance_ocid" {
  value = oci_core_instance.test_instance.id
}