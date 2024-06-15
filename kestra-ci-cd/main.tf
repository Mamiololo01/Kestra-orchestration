terraform {
  backend "s3" {
    bucket = "kestraio"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
  required_providers {
    kestra = {
      source  = "kestra-io/kestra"
      version = "~>0.13"
    }
  }
}

provider "kestra" {
  url      = var.hostname # "http://localhost:8080"
  username = var.username
  password = var.password
}

resource "kestra_flow" "flows" {
  keep_original_source = true
  for_each             = fileset(path.module, "flows/*/*.yml")
  flow_id              = yamldecode(templatefile(each.value, {}))["id"]
  namespace            = yamldecode(templatefile(each.value, {}))["namespace"]
  content              = templatefile(each.value, {})
}

resource "kestra_namespace_file" "prod_scripts" {
  for_each  = fileset(path.module, "scripts/**")
  namespace = "prod"
  filename = "/${each.value}"
  content   = file(each.value)
}