terraform {
  backend "gcs" {
    bucket = "aef-pso-hackathon-tfe"
    prefix = "aef-orchestration-framework/environments/dev"
  }
}