resource "random_id" "test" {
  byte_length = 16
}

output "testing" {
  value = random_id.test.hex
}

output "files" {
  value = [
    {
      filename = "first.txt"
      value    = random_id.test.hex
    },
    {
      filename = "second.txt"
      value    = random_id.test.hex
    }
  ]
}
