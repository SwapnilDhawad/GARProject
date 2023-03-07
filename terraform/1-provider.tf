provider "google" {

  project     = "gifted-honor-378815"
  region      = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "garproject-tf-staging"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"
    }
  }
}