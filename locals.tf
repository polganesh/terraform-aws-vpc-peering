locals {
  is_same_account= data.aws_caller_identity.accepter_account.account_id == data.aws_caller_identity.requester_account.account_id
  is_same_region =data.aws_region.accepter_region.name == data.aws_region.requester_region.name
  #--- get route table ids from both requester and accepter vpc
  requester_route_table_ids = data.aws_route_tables.requester_route_tables.ids
  accepter_route_table_ids = data.aws_route_tables.accepter_route_tables.ids
  requester_cidr_blocks = toset([data.aws_vpc.requester_vpc.cidr_block])
  accpeter_cidr_blocks = toset([data.aws_vpc.accepter_vpc.cidr_block])

  requester_new_routes = [
    for pair in setproduct(local.requester_route_table_ids, local.accpeter_cidr_blocks) : {
      route_table_id    = pair[0]
      destination_cidr_block = pair[1]
    }
  ]

  accepter_new_routes = [
    for pair in setproduct(local.accepter_route_table_ids, local.requester_cidr_blocks) : {
      route_table_id    = pair[0]
      destination_cidr_block = pair[1]
    }
  ]

}

output "requester_route_table_Ids" {
  value = local.requester_route_table_ids
}

output "requester_cidr" {
  value = local.requester_cidr_blocks
}

output "accepter_route_table_Ids" {
  value = local.accepter_route_table_ids
}

output "accepter_cidr" {
  value =local.accpeter_cidr_blocks
}
