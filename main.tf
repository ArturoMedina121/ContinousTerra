
#Main.tf Declare providers

terraform {
    backend "remote" {
        organization = "Funky"
        workspaces{
            name = "ContinousTerra"
        }
    }


    required_providers {
        google = {
            source = "hashicorp/google"
            version = "~> 3.55"
        }
    }

    required_version = "~> 0.14"
}


provider "google"{
    project = var.google_project
    region = var.region
}
