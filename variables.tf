variable "tenancy_ocid" {
  description = "OCID of your tenancy"
  type        = string
}

variable "user_ocid" {
  description = "OCID of the user calling the API"
  type        = string
}

variable "fingerprint" {
  description = "Fingerprint for the key pair being used"
  type        = string
}

variable "private_key_path" {
  description = "Path to the private key"
  type        = string
}

variable "region" {
  description = "OCI region"
  type        = string
  default     = "us-ashburn-1"
}

variable "compartment_id" {
  description = "OCID of the compartment where resources will be created"
  type        = string
}

variable "subnet_id" {
  description = "OCID of subnet where instance will be created"
  type        = string
}

variable "image_id" {
  description = "OCID of the image to use for the instance"
  type        = string
  default     = "ocid1.image.oc1..aaaaaaaadf3m6vj3n36v3z3h3v3z3h3v3z3h3v3z3h3v3z3h3v3z3h3v3z3h" # Oracle Linux 8 image
}