resource "null_resource" "images" {
  provisioner "local-exec" {
    command = "packer build .terraform/modules/packer/images/linux.json && packer build .terraform/modules/packer/images/windows.json && packer build .terraform/modules/packer/images/windows2019.json && packer build .terraform/modules/packer/images/sql.json"
    environment = {
      resource_group = var.res_resource_group
    }
  }
}