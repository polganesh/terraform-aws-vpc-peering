resource "aws_route" "accepter_routes" {
  provider = aws.accepter
  count = length(local.accepter_new_routes)
  route_table_id = local.accepter_new_routes[count.index].route_table_id
  destination_cidr_block = local.accepter_new_routes[count.index].destination_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.requester-vpc-peering-connection.id
}
