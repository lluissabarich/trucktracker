resource "ibm_cr_namespace" "truckTrackerCR" {
  name              = "trucktracker"
  # resource_group_id = ibm_resource_group.resource_group.id
    resource_group_id = var.resource_group_var
}

output "cr_id" {
    value = ibm_cr_namespace.truckTrackerCR.id
}
