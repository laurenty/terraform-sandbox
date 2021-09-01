variable "some_prefix" {
	type = string
  default = "somevalue"
}

resource "random_pet" "rand" {
	prefix = var.some_prefix
	length = 4
}

output "myvar" {
	value = random_pet.rand.id
}
