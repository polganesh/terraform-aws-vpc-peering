#-----------------------------------------------------------------------------------------------------------------------
# This will be useful for configuring provider for requester and acceptor
#-----------------------------------------------------------------------------------------------------------------------
provider "aws" {
  alias = "requester"
}

provider "aws" {
  alias = "accepter"
}