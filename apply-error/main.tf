variable "tries" {
  default = 3
}

resource "null_resource" "testing" {
  provisioner "local-exec" {
    when    = create
    command = "bash try.sh ${var.tries}"
  }
}
