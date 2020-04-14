resource "vsphere_tag_category" "category" {
  name        = "${var.name}-terraform-test-category"
  cardinality = "SINGLE"
  description = "Managed by Terraform"

  associable_types = [
    "VirtualMachine",
    "Datastore",
  ]
}

resource "vsphere_tag" "tag" {
  name        = var.tags
  category_id = vsphere_tag_category.category.id
  description = "Managed by Terraform"
}
