terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "test" {
  triggers = {
    timestamp = timestamp()
  }
}

output "test" {
  value = "Azure cleanup test"
}
