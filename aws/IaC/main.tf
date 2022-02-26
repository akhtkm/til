provider "aws" {
    region = "ap-northeast-1" 
    shared_config_files = [ "/home/dev/.aws/config" ]
    shared_credentials_files = [ "/home/dev/.aws/credentials" ]
    profile = "defaut"
}