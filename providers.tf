provider "aws" {
  region = var.region
  default_tags {
    tags = {
      "PROJECT" : "neha-3tier"
      "ENV" : "DEV"
    }
  }
}
