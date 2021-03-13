resource "random_id" "test" {
  byte_length = 16
}

output "testing" {
  value = random_id.test.hex
}

