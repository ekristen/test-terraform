variable "tries" {
  type    = number
  default = 3
}

data "command" "test" {
  command = ["bash", "try.sh", var.tries]
}

data "local_file" "test" {
  filename = "this-file-does-not-exist"
  depends_on = [
    data.command.test
  ]
}

resource "null_resource" "test" {
  depends_on = [
    data.local_file.test
  ]
}

terraform {
  required_providers {
    command = {
      source  = "hkak03key/command"
      version = "0.1.1"
    }
  }
}
