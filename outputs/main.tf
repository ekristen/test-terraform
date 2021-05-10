resource "random_id" "test" {
  byte_length = 128
}

output "openvpn_client_config" {
  value = random_id.test.hex
}
