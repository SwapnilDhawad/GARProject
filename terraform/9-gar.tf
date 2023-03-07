resource "google_artifact_registry_repository" "gar-repo" {
  location      = "us-central1"
  repository_id = "assignment-repository"
  description   = "docker repository"
  format        = "DOCKER"
}