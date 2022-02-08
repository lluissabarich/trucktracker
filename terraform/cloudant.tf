resource "ibm_cloudant" "cloudant" {
  name     = "truckTracker"
#  location = "eu-gb"
  location = var.region
  plan     = "standard"
    resource_group_id = var.resource_group_var
}


resource "ibm_resource_key" "cloudant_credentials" {
  name                  = "my-db-key"
  role                  = "Manager"
  resource_instance_id  = ibm_cloudant.cloudant.id
}

output "cloudant_credentials" {
  value = ibm_resource_key.cloudant_credentials.credentials
  sensitive = true
}
