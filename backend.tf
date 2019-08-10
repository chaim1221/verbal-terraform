terraform {
  # backend "local" {
  #   path = "terraform.tfstate"
  # }
  backend "s3" {  
    bucket    = "terraform-state" 
    key       = "terraform.tfstate"
    region    = "us-ashburn-1"  
    endpoint  = "https://verbal.compat.objectstorage.us-ashburn-1.oraclecloud.com"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true

    // TF error "variables cannot be used here" :/
    shared_credentials_file = "/Users/celiyah/.oci/credentials"
  }
}
