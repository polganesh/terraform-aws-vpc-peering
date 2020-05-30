resource "time_sleep" "sleep-for-manual-approval-from-requester-accepter" {
  depends_on = [  aws_vpc_peering_connection_accepter.accepter-vpc-peering-connection,
                  aws_vpc_peering_connection.requester-vpc-peering-connection]
  create_duration = var.wait_for_approval_from_requester_accepter
}