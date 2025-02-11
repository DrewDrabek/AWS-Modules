# I like to manage the backend and the provider in seperate files for documentations sake this is not something that you need to do if it makes it more complicated

/*

For backend management - if you do not specify anything terraform will make the state file locally - this needs to be stored in some kind of secure location AND ignored using the gitignore

Here is an exampel for aws

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

If you use a CSP's storage system make sure the credentials that you are using the provider match it
*/

