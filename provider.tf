# I like to manage the backend and the provider in seperate files for documentations sake this is not something that you need to do if it makes it more complicated


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" 
      version = "~> 5.86.1"
    }
  }
}

provider "aws" {
    region = "us-east-1" # This can be whatever region but set to us-east-1 for testing
}

/*

 When doing this there are a few ways that we can provider credentials

 setting them in the provider configuration - make sure that they match the backend if using one

 credentials file

 container creds

 instance creds


 */