resource "null_resource" "mock_eks_cluster" {
  triggers = {
    cluster_name = var.cluster_name
    region       = var.region
  }

  provisioner "local-exec" {
    command = "echo 'Pretending to provision EKS cluster named ${var.cluster_name}'"
  }
}

resource "null_resource" "mock_node_group" {
  triggers = {
    node_group = var.node_group_name
  }

  provisioner "local-exec" {
    command = "echo 'Mock node group: ${var.node_group_name}'"
  }
}
