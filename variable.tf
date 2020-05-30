#-----------------------------------------------------------------------------------------------------------------------
# Variables control name and tags
#-----------------------------------------------------------------------------------------------------------------------
variable "cost_centre" {
  description = "A part of an organization to which costs may be charged.e.g. finance/it/hr/wholesale/retail/investment etc..."
  default     = "na"
}

variable "environment"{
  default="n"
  description = "environment of vpc which is requesting"
}
variable "seq_id" {
  default = "001"
}

variable "region_id" {
  default = "euw1"
}

# useful if need to add tag
variable "region" {
  description = "region in which resource is created."
  default     = "eu-west-1"
}
variable "version_id" {
  default = "1"
}

variable "build_date" {
  default = ""
}

variable "common_tags" {
  type    = map(any)
  default = {}
  description = ""
}

variable "tags_for_vpc_peering_requester" {
  type    = map(any)
  default = {}
}

variable "tags_for_vpc_peering_accepter" {
  type    = map(any)
  default = {}
}

#-----------------------------------------------------------------------------------------------------------------------
# Variables specific to vpc which is Requesting VPC peering
#-----------------------------------------------------------------------------------------------------------------------
variable "requester_vpc_id"{
  default = ""
  description = "vpc id which is requesting vpc peering. source vpc id"
}

//variable "requester_access_key" {
//  default = ""
//}
//
//variable "requester_secret_key" {
//  default = ""
//}
//
//variable "requester_region" {
//  default = ""
//}

variable "requester_allow_remote_vpc_dns_resolution"{
  default = false
  description = "Allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC. This is not supported for inter-region VPC peering"
}

#-----------------------------------------------------------------------------------------------------------------------
# Variables specific to vpc which is Accepting VPC peering
#-----------------------------------------------------------------------------------------------------------------------
variable "accepter_vpc_id"{
  default = ""
  description = "vpc id which is accepting vpc peering. destination vpc id"
}

//variable "accepter_account_id" {
//  default = ""
//  description = "useful for enabling cross account vpc peering"
//}

variable "accepter_allow_remote_vpc_dns_resolution"{
  default = false
  description = "Allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC. This is not supported for inter-region VPC peering"
}

//variable "accepter_access_key" {
//  default = ""
//}
//
//variable "accepter_secret_key" {
//  default = ""
//}
//
//variable "accepter_region" {
//  default = ""
//}

#-----------------------------------------------------------------------------------------------------------------------
# Variables specific to vpc which is Accepting VPC peering
#-----------------------------------------------------------------------------------------------------------------------
variable "auto_accept_peering" {
  default = false
}

variable "wait_for_approval_from_requester_accepter" {
  default = "10m"
}

variable "update_timeout"{
  default = "15m"
}

variable "delete_timeout"{
  default = "15m"
}

variable "create_timeout"{
  default = "15m"
}
