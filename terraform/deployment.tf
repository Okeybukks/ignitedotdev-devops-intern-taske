provider "kubectl" {
  config_path    = "../config/KUBECONFIG" # Path to your kubeconfig file
  config_context = "kind-kind" # Context within your kubeconfig
}

resource "kubectl_manifest" "hello_world_deployment" {
    yaml_body = file("../deployment.yaml")
}

