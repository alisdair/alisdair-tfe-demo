variable "count" {
  type = "string"
  default = 100
}

resource "random_id" "random" {
  count = "${var.count}"

  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 24
}

output "random_ids" {
  value = ["${random_id.random.*.hex}"]
}
