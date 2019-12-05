
package Paws::EC2::DeregisterTransitGatewayMulticastGroupMembers;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupIpAddress => (is => 'ro', isa => 'Str');
  has NetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TransitGatewayMulticastDomainId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterTransitGatewayMulticastGroupMembers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeregisterTransitGatewayMulticastGroupMembersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeregisterTransitGatewayMulticastGroupMembers - Arguments for method DeregisterTransitGatewayMulticastGroupMembers on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterTransitGatewayMulticastGroupMembers on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeregisterTransitGatewayMulticastGroupMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterTransitGatewayMulticastGroupMembers.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeregisterTransitGatewayMulticastGroupMembersResult =
      $ec2->DeregisterTransitGatewayMulticastGroupMembers(
      DryRun                          => 1,                      # OPTIONAL
      GroupIpAddress                  => 'MyString',             # OPTIONAL
      NetworkInterfaceIds             => [ 'MyString', ... ],    # OPTIONAL
      TransitGatewayMulticastDomainId => 'MyString',             # OPTIONAL
      );

    # Results:
    my $DeregisteredMulticastGroupMembers =
      $DeregisterTransitGatewayMulticastGroupMembersResult
      ->DeregisteredMulticastGroupMembers;

# Returns a L<Paws::EC2::DeregisterTransitGatewayMulticastGroupMembersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeregisterTransitGatewayMulticastGroupMembers>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 GroupIpAddress => Str

The IP address assigned to the transit gateway multicast group.



=head2 NetworkInterfaceIds => ArrayRef[Str|Undef]

The IDs of the group members' network interfaces.



=head2 TransitGatewayMulticastDomainId => Str

The ID of the transit gateway multicast domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterTransitGatewayMulticastGroupMembers in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

