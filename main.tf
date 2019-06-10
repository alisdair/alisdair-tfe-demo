variable "output_count" {
  type    = number
  default = 1000
}

resource "random_id" "random" {
  count = var.output_count

  keepers = {
    uuid = uuid()
  }

  byte_length = 24
}

output "random_ids" {
  value = [random_id.random.*.hex]
}
