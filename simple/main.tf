variable "external_ip" {
  default = "1.1.1.1"
}

resource "random_id" "test" {
  byte_length = 16
}

resource "random_id" "test2" {
  byte_length = 64
}

output "testing" {
  value = random_id.test.hex
}

output "testing2" {
  value = random_id.test2.hex
}

output "external_ip" {
  value = var.external_ip
}
