resource "null_resource" "testing" {
  provisioner "local-exec" {
    when    = destroy
    command = "bash trip.sh"
  }
}
