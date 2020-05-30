resource "aws_route" "requester_routes" {
  provider = aws.requester
  count = length(local.requester_new_routes)
  route_table_id = local.requester_new_routes[count.index].route_table_id
  destination_cidr_block = local.requester_new_routes[count.index].destination_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.requester-vpc-peering-connection.id
}
