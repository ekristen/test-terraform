variable "tries" {
  type    = number
  default = 3
}

data "local_file" "test" {
  filename = "this-file-does-not-exist"
}
