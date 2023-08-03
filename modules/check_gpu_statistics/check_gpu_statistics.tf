resource "shoreline_notebook" "check_gpu_statistics" {
  name       = "check_gpu_statistics"
  data       = file("${path.module}/data/check_gpu_statistics.json")
  depends_on = []
}

