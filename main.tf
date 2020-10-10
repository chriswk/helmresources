terraform {
  required_version = ">= 0.13.3"
  backend "remote" {
    organization = "chriswk"

    workspaces {
      name = "hcloud-k8s-helm"
    }
  }
}

provider kubernetes {
  config_path = "./kubeconfig"
}

provider helm {
  kubernetes {
    config_path = "./kubeconfig"
  }
}
