variable "tenancy_ocid" {
  description = "OCID of your tenancy"
  type        = string
  #default = "ocid1.tenancy.oc1..aaaaaaaao5tzcf56h4xmmlmgz4mzlt2fw366v2dcvbonemlkzp5ezessseha" # Replace with your actual tenancy OCID 

}

variable "user_ocid" {
  description = "OCID of the user calling the API"
  type        = string
  #default = "ocid1.user.oc1..aaaaaaaa7injenbwphtghs5zpscdbe6xa5zww2rjnkpp2zebozdwpmwah4iq" # Replace with your actual user OCID
}

variable "fingerprint" {
  description = "Fingerprint for the key pair being used"
  type        = string
  #default = "e6:5a:70:7c:3f:b1:ea:92:6f:08:ae:38:45:07:ea:19" # Replace with your actual fingerprint
}

variable "private_key_path" {
  description = "Path to OCI API private key"
  type        = string
  ##default = "/Users/akarshaik/.oci/akarsha.i@oracle.com_2023-11-27T11_12_03.749Z.pem"
  
  ##default = "~/.oci/oci_api_key.pem"  # Standard OCI path
  
}
variable "image_id" {
  description = "OCI image OCID"
  type        = string
  #default     = "ocid1.image.oc1.iad.aaaaaaaas27akp7nifckidk4kmlithh753vddgic6pum7diym632w3ie7yfa" # Oracle Linux 8
}

variable "region" {
  description = "OCI region"
  type        = string
  #default     = "us-ashburn-1"
}

variable "compartment_id" {
  description = "OCID of the compartment where resources will be created"
  type        = string
  #default = "ocid1.compartment.oc1..aaaaaaaac7ixtdbw32dnr55p4mjsjdmtbfcy5pa5rasdvuw57eup5w7xbu3q"
}

variable "subnet_id" {
  description = "OCID of subnet where instance will be created"
  type        = string
  #default = "ocid1.subnet.oc1.iad.aaaaaaaaumyoldcuoiketyng6enrc4fudl67hkkeicko2hnymeqri3twfmca"
}


variable "compute_shape" {
  type    = string
  #default = "VM.Standard.E4.Flex"
}

variable "compute_cpus" {
  type    = string
  #default = "2"
}

variable "compute_memory_in_gbs" {
  type    = string
  #default = "16"
}

variable "compute_ssh_authorized_keys" {
  description = "The SSH public key to be added to the instance for authentication"
  type        = string
  #default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCoMM5oNqtheYmN0oEdwe6Ql0B723MWJRavMCM9cBTcn0vTfKGBGIoRA0rK2XrFlIMJzb0TaFcCXF/3ejo8isiOdRfm1ANhLl6ovcG9ILrkWbogV1pISaUTcgjvqP1EFhfNiFIP0xejAsorivjft5t8RIjFRa+UHRTwJIio1wUtWsF37tkyi1Sdwq+eW+XvXkWWPEC6MZoIYnqgqSfHrXnqFViRSwploe5hTJYTmNg7Fo9Xa5qaqpTNhkPpwgl9qb8CJoKWHDH41ibdgZJgZfrAyfZpWmw/LwEPwUlDAHNVI0+zrbrT2Syai/o/anufqp+Nas7XMDAPlqLBazC7gudt ssh-key-2023-09-26"
}
# variable "compute_ssh_authorized_keys" {
#   type = string
#   #default = "/Users/akarshaik/Oracle Content/ssh-key-2023-09-26.key.pub"
# }